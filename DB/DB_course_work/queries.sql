-- Характерные запросы в базу данных allclimb

-- Простые. При построении гайдбука обычно происходят запросы вида - выдать все сектора района, или все фото и маршруты сектора. Это совсем просто..

USE allclimb;
-- выберем какой нибудь сектор
SELECT name FROM sectors WHERE id=53;

-- name      |
-- ----------|
-- doloremque|

-- все фото для него в порядке следования в секторе

SELECT i.* FROM images AS i 
	RIGHT JOIN (SELECT id FROM sectors WHERE name='doloremque') AS s
		ON s.id = i.item_id AND i.image_type_id=(SELECT id FROM image_types WHERE name='sector')
	ORDER BY i.order;
	
-- id|item_id|image_type_id|path1                         |path2                          |path3                           |path4                           |order|published|created_at         |updated_at         |created_by|updated_by|size1|size2|size3|size4|
-- --|-------|-------------|------------------------------|-------------------------------|--------------------------------|--------------------------------|-----|---------|-------------------|-------------------|----------|----------|-----|-----|-----|-----|
--  8|     53|            1|http://lorempixel.com/640/480/|http://lorempixel.com/1024/768/|http://lorempixel.com/1600/1200/|http://lorempixel.com/2048/1556/|    1|        0|1977-10-12 00:32:21|1980-12-08 13:05:06|        51|         6|   45|  396| 5155|69218|

-- такие у меня тестовые имена фотографий :))

-- ну или получить все маршруты для этой фотографии сектора

SELECT DISTINCT r.* FROM routes AS r
	RIGHT JOIN images AS i 
		ON r.image_id = i.id
	RIGHT JOIN (SELECT id FROM sectors WHERE name='doloremque') AS s
		ON s.id = i.item_id AND i.image_type_id=(SELECT id FROM image_types WHERE name='sector')
	ORDER BY r.order;
	
-- id|sector_id|image_id|name     |type_id|length|bolts|top_type_id|sit_start|pitches|grade_id|sec_grade_id|spline                                                          |author         |creation_date      |order|published|info                                                                                                                                           |created_at         |updated_at         |created_by|updated_by|
-- --|---------|--------|---------|-------|------|-----|-----------|---------|-------|--------|------------|----------------------------------------------------------------|---------------|-------------------|-----|---------|-----------------------------------------------------------------------------------------------------------------------------------------------|-------------------|-------------------|----------|----------|
-- 34|       86|       8|assumenda|      4|     0|    0|          1|        1|      0|      15|          21|292775c813326ee061da327ca4c122fff03bbe034bd0807ba56ac60c10dd3773|Rafael Ondricka|2014-09-03 04:55:02|    0|        0|Voluptatibus sed est reprehenderit nulla. Dignissimos aut eaque officiis qui aliquam sed. Et eos saepe dolorem natus consequatur numquam dicta.|1986-02-10 19:02:27|1981-12-25 16:39:05|        95|        40|

-- не густо у нас там маршрутов..
-- и данные кривые (( маршрут принадлежащий фото (принадлежащее сектору id=53) имеет sector_id=83... это filldb.info... (

-- немного сложнее ситуация, если скажем надо подсчитать количество лайков маршрутам для каждого региона

SELECT regions.id, regions.name, COUNT(DISTINCT likes.id) AS count FROM regions
	LEFT JOIN sectors
		ON sectors.region_id=regions.id
	LEFT JOIN routes
		ON routes.sector_id=sectors.id
	LEFT JOIN likes
		ON likes.item_id=routes.id AND likes.like_type_id=(SELECT id FROM like_types WHERE name='route')
	GROUP BY regions.id
	ORDER BY count DESC;

-- id |name          |count|
-- ---|--------------|-----|
--  10|et            |    3|
--  99|ut            |    3|
--  88|nesciunt      |    2|
--  67|rerum         |    2|
--   7|inventore     |    1|
--  55|sed           |    1|
--  63|quia          |    1|
--  72|reiciendis    |    1|
--  96|iusto         |    1|
--   9|et            |    1|
--  97|dolorum       |    1|
--  58|eaque         |    1|
--  74|dolore        |    1|
--  98|architecto    |    1|
--   3|eos           |    1|
--  19|eligendi      |    1|
--  35|recusandae    |    1|
--  52|iure          |    1|
--   5|et            |    1|
--  53|quia          |    1|
--  22|et            |    1|
--  30|libero        |    1|
--  70|eum           |    1|
--  15|minima        |    0|
--  23|ut            |    0|
--  31|placeat       |    0|
-- .......

-- На основе этого напишем процедуру, которая будет, ежедневно скажем, подсчитывать рейтинг регионов на основе данных о максимальном количестве лайков маршрутам для какого либо региона
-- Количество_лайков_маршрутам_региона / Максимальное_количество_лайков_маршрутам_региона = рейтинг_региона

DELIMITER //
CREATE PROCEDURE REGION_RATING_COUNT()
BEGIN
	-- Вычисляем максимально возможное количество лайков маршрутам для отдельного региона
	SET @maximum := (SELECT MAX(count) FROM (
	SELECT regions.name, COUNT(DISTINCT likes.id) AS count FROM regions
		LEFT JOIN sectors
			ON sectors.region_id=regions.id
		LEFT JOIN routes
			ON routes.sector_id=sectors.id
		LEFT JOIN likes
			ON likes.item_id=routes.id AND likes.like_type_id=(SELECT id FROM like_types WHERE name='route')
		GROUP BY regions.id
	) as tmp);

	-- Теперь пройдем и посчитаем рейтинг по каждому (и сохраним его в регионы)
	-- Вернее сделаем это одним комбинированным запросом вида:
	-- UPDATE regions r1
	-- 	INNER JOIN regions r2 ON r1.id = r2.id
	-- 	SET r1.rating = r2.cur_rating/max_rating;...
	
	UPDATE regions r1
	INNER JOIN (SELECT regions.id, COUNT(DISTINCT likes.id) AS count FROM regions
			LEFT JOIN sectors
				ON sectors.region_id=regions.id
			LEFT JOIN routes
				ON routes.sector_id=sectors.id
			LEFT JOIN likes
				ON likes.item_id=routes.id AND likes.like_type_id=(SELECT id FROM like_types WHERE name='route')
			GROUP BY regions.id
		) AS r2
		ON r1.id = r2.id
	SET r1.rating = r2.count/@maximum;
	
END//
DELIMITER ;

CALL REGION_RATING_COUNT();

SELECT id, name, rating FROM regions ORDER BY rating DESC;

-- id |name          |rating     |
-- ---|--------------|-----------|
--  99|ut            |          1|
--  10|et            |          1|
--  88|nesciunt      |0.666666666|
--  67|rerum         |0.666666666|
--  98|architecto    |0.333333333|
--   3|eos           |0.333333333|
--  97|dolorum       |0.333333333|
--   5|et            |0.333333333|
--  96|iusto         |0.333333333|
--   7|inventore     |0.333333333|
--   9|et            |0.333333333|
--  74|dolore        |0.333333333|
--  72|reiciendis    |0.333333333|
--  70|eum           |0.333333333|
--  63|quia          |0.333333333|
--  58|eaque         |0.333333333|
--  55|sed           |0.333333333|
--  53|quia          |0.333333333|
--  19|eligendi      |0.333333333|
--  52|iure          |0.333333333|
--  35|recusandae    |0.333333333|
--  22|et            |0.333333333|
--  30|libero        |0.333333333|
--  24|mollitia      |          0|
--  25|et            |          0|
--  26|quis          |          0|
-- .........

-- Все сходится вроде.
-- Немного смущает, что в процедуре приходится проделывать дважды по-сути один и тот же запрос - но чисто алгоритмически иначе наверное не получится
-- Сначала посчитать максимум - а потом посчитать отношение к этому максимуму... Остается надеяться на алгоритмы кеширования )

-- Про триггеры: триггеров в реальном сервисе используется огромное множество, но там это все сделано силами ORM.. 
-- А тут реализую например триггер для подсчета необходимого пространства для скачивания сектора - при добавлении/удалении/изменении фотографии в нём
-- Каждый сектор содержит фотографии - их размеры известны (можно запросить в хранилище - либо хранятся прямо в таблице фото - как угодно) 
-- При добавлении каждой фотографии в сектор - надо приплюсовать ее размер к уже записанному в секторе значению (их там 4 - для каждого разрешения добавляемой фото)
-- При удалении - отнять, при изменении - отнять предыдущий размер, добавить новый.. все просто.

DELIMITER //
CREATE TRIGGER add_inserted_image_size BEFORE INSERT ON images
	FOR EACH ROW BEGIN
		-- Cначала проверка - в сектор ли добавляют фото
		IF NEW.image_type_id=(SELECT id FROM image_types WHERE name='sector') THEN
			UPDATE sectors SET 
				cache_size1 = cache_size1 + NEW.size1,
				cache_size2 = cache_size2 + NEW.size2,
				cache_size3 = cache_size3 + NEW.size3,
				cache_size4 = cache_size4 + NEW.size4
			WHERE id = NEW.item_id;
		END IF;
	END//
DELIMETER ;

-- выберем пустой (без фото) сектор

SELECT s.id, COUNT(i.id) `count`  FROM 
		sectors s
	LEFT JOIN 
		images i 
			ON s.id = i.item_id AND i.image_type_id = (SELECT id FROM image_types WHERE name='sector')
GROUP BY s.id 
ORDER BY `count`
LIMIT 1;

-- id|count|
-- --|-----|
-- 15|    0|

SELECT cache_size1, cache_size2, cache_size3, cache_size4 FROM sectors WHERE id=15;

-- cache_size1|cache_size2|cache_size3|cache_size4|
-- -----------|-----------|-----------|-----------|
--       29820|     459015|     591275|     770051|

-- Он хоть и пустой - но filldb заполнил это поле значениями... придется очистить. все подобные.

UPDATE sectors s1
 	INNER JOIN (SELECT s.id, COUNT(i.id) `count`  FROM 
			sectors s
		LEFT JOIN 
			images i 
				ON s.id = i.item_id AND i.image_type_id = (SELECT id FROM image_types WHERE name='sector')
		GROUP BY s.id) c 
			ON s1.id=c.id AND c.count=0
SET cache_size1=0, cache_size2=0, cache_size3=0, cache_size4=0;

-- Проверяем

SELECT s.id, COUNT(i.id) images_count, s.cache_size1, s.cache_size2, s.cache_size3, s.cache_size4  FROM 
		sectors s
	LEFT JOIN 
		images i 
			ON s.id = i.item_id AND i.image_type_id = (SELECT id FROM image_types WHERE name='sector')
GROUP BY s.id 
ORDER BY images_count;

/*id |images_count|cache_size1|cache_size2|cache_size3|cache_size4|
---|------------|-----------|-----------|-----------|-----------|
 14|           0|          0|          0|          0|          0|
 30|           0|          0|          0|          0|          0|
 78|           0|          0|          0|          0|          0|
 25|           0|          0|          0|          0|          0|
 41|           0|          0|          0|          0|          0|
 57|           0|          0|          0|          0|          0|
 89|           0|          0|          0|          0|          0|
  4|           0|          0|          0|          0|          0|
 20|           0|          0|          0|          0|          0|
 36|           0|          0|          0|          0|          0|
 52|           0|          0|          0|          0|          0|
 68|           0|          0|          0|          0|          0|
 84|           0|          0|          0|          0|          0|
100|           0|          0|          0|          0|          0|
 15|           0|          0|          0|          0|          0|
 31|           0|          0|          0|          0|          0|
 63|           0|          0|          0|          0|          0|
 95|           0|          0|          0|          0|          0|
 10|           0|          0|          0|          0|          0|
 58|           0|          0|          0|          0|          0|
 74|           0|          0|          0|          0|          0|
  5|           0|          0|          0|          0|          0|
 21|           0|          0|          0|          0|          0|
 37|           0|          0|          0|          0|          0|
 85|           0|          0|          0|          0|          0|
 16|           0|          0|          0|          0|          0|
 32|           0|          0|          0|          0|          0|
 48|           0|          0|          0|          0|          0|
 64|           0|          0|          0|          0|          0|
 11|           0|          0|          0|          0|          0|
 27|           0|          0|          0|          0|          0|
 59|           0|          0|          0|          0|          0|
 75|           0|          0|          0|          0|          0|
 91|           0|          0|          0|          0|          0|
  6|           0|          0|          0|          0|          0|
 22|           0|          0|          0|          0|          0|
 38|           0|          0|          0|          0|          0|
 54|           0|          0|          0|          0|          0|
 70|           0|          0|          0|          0|          0|
 86|           0|          0|          0|          0|          0|
  1|           0|          0|          0|          0|          0|
 17|           0|          0|          0|          0|          0|
 33|           0|          0|          0|          0|          0|
 49|           0|          0|          0|          0|          0|
 65|           0|          0|          0|          0|          0|
 28|           0|          0|          0|          0|          0|
 44|           0|          0|          0|          0|          0|
 60|           0|          0|          0|          0|          0|
 92|           0|          0|          0|          0|          0|
 23|           0|          0|          0|          0|          0|
 39|           0|          0|          0|          0|          0|
 55|           0|          0|          0|          0|          0|
 71|           0|          0|          0|          0|          0|
  2|           0|          0|          0|          0|          0|
 18|           0|          0|          0|          0|          0|
 98|           0|          0|          0|          0|          0|
 13|           0|          0|          0|          0|          0|
 29|           0|          0|          0|          0|          0|
 61|           0|          0|          0|          0|          0|
 93|           0|          0|          0|          0|          0|
 24|           0|          0|          0|          0|          0|
 56|           0|          0|          0|          0|          0|
  3|           0|          0|          0|          0|          0|
 19|           0|          0|          0|          0|          0|
 35|           0|          0|          0|          0|          0|
 51|           0|          0|          0|          0|          0|
 99|           0|          0|          0|          0|          0|
 46|           1|      59445|     400455|     262167|     754023|
 62|           1|      13607|     664676|     465525|    7384843|
 94|           1|     154964|     237185|     884847|    5980784|
  9|           1|     154730|     555475|    1085964|    3847339|
 73|           1|     107749|     296410|    1057115|    4537314|
 47|           1|      83144|     283405|     582356|    7205062|
 79|           1|      55373|     115141|     780712|    2219462|
 42|           1|      74376|     182038|     896982|    3106044|
 90|           1|      96544|     405914|     168976|    1598646|
 53|           1|      21700|     199111|     432655|    9299348|
 69|           1|      28808|     189841|      45722|    8888436|
 96|           1|      39519|     146156|     572974|     673451|
 43|           1|      85651|     156889|     841323|    4736096|
 97|           1|      45208|     366359|     635415|    9475138|
 12|           1|      55863|     507707|     880220|    9502210|
  7|           1|      18919|     101331|     978250|    6569864|
 87|           1|     127266|     158624|     439158|    7150281|
 50|           1|       2943|     688921|     581199|    6238867|
 66|           1|      85153|     656895|     685798|    2231573|
 82|           1|       9314|     241157|     235371|    3909235|
 45|           1|      67671|     484593|      95990|    1470915|
 77|           1|       1349|     627556|     743528|    9509403|
  8|           1|      91077|     603627|     732918|    4494594|
 40|           1|     154492|     611700|     170213|    2673633|
 72|           1|      61450|     380602|     532477|       4135|
 67|           1|     151876|     331287|     618133|    5670077|
 83|           1|     119270|     113147|      60678|    7591023|
 80|           2|       3570|      42306|     147831|    3552286|
 81|           2|      59467|      76054|     475005|    2829081|
 76|           2|      80147|     409710|     224406|    4582170|
 34|           2|     117182|     328130|     349262|    6618096|
 88|           2|      84470|     359769|     234498|    2849585|
 26|           3|      77149|     757024|     817582|     508991|*/

-- ну вот - так как-то более вменяемо.
-- начинаем тестировать триггер. Итак сектор id=15
-- Вставляем фото

INSERT INTO `images` VALUES (DEFAULT,'15','1','http://lorempixel.com/640/480/','http://lorempixel.com/1024/768/','http://lorempixel.com/1600/1200/','http://lorempixel.com/2048/1556/','4','0','1986-10-09 07:08:26','1997-06-12 01:26:55','46','44','62','759','8923','48450');

-- Проверяем

SELECT cache_size1, cache_size2, cache_size3, cache_size4 FROM sectors WHERE id=15;

-- cache_size1|cache_size2|cache_size3|cache_size4|
-- -----------|-----------|-----------|-----------|
--          62|        759|       8923|      48450|

-- Прибавилось. Попробуем еще одну..

INSERT INTO `images` VALUES (DEFAULT,'15','1','http://lorempixel.com/640/480/','http://lorempixel.com/1024/768/','http://lorempixel.com/1600/1200/','http://lorempixel.com/2048/1556/','4','0','1986-10-09 07:08:26','1997-06-12 01:26:55','46','44','62','759','8923','48450');

SELECT cache_size1, cache_size2, cache_size3, cache_size4 FROM sectors WHERE id=15;

-- cache_size1|cache_size2|cache_size3|cache_size4|
-- -----------|-----------|-----------|-----------|
--         124|       1518|      17846|      96900|

-- Похоже работает

-- Сходным образом реализуются и триггеры на удаление и обновление..

DELIMITER //
CREATE TRIGGER sub_deleted_image_size BEFORE DELETE ON images
	FOR EACH ROW BEGIN
		-- Cначала проверка - в секторе ли удаляют фото
		IF OLD.image_type_id=(SELECT id FROM image_types WHERE name='sector') THEN
			UPDATE sectors SET 
				cache_size1 = cache_size1 - OLD.size1,
				cache_size2 = cache_size2 - OLD.size2,
				cache_size3 = cache_size3 - OLD.size3,
				cache_size4 = cache_size4 - OLD.size4
			WHERE id = OLD.item_id;
		END IF;
	END//
DELIMETER ;

-- 

DELIMITER //
CREATE TRIGGER update_updated_image_size BEFORE UPDATE ON images
	FOR EACH ROW BEGIN
		-- Cначала проверка - в секторе ли обновляют фото
		IF NEW.image_type_id=(SELECT id FROM image_types WHERE name='sector') THEN
			UPDATE sectors SET 
				cache_size1 = cache_size1 - OLD.size1 + NEW.size1,
				cache_size2 = cache_size2 - OLD.size2 + NEW.size2,
				cache_size3 = cache_size3 - OLD.size3 + NEW.size3,
				cache_size4 = cache_size4 - OLD.size4 + NEW.size4
			WHERE id = NEW.item_id;
		END IF;
	END//
DELIMETER ;

-- как-то так..

-- Представления. С ними на практике работать не приходилось, не очень пока осознал удобства применения
-- Скажем для отображения на сайте представление 10 последних прохождений (пролазов)

CREATE OR REPLACE VIEW recent_10_climbs AS SELECT * FROM climbs ORDER BY climbed_at DESC LIMIT 10;

SELECT * FROM recent_10_climbs;

-- id|user_id|route_id|climb_type_id|climbed_at         |created_at         |updated_at         |
-- --|-------|--------|-------------|-------------------|-------------------|-------------------|
-- 30|     60|       1|            4|2019-09-19 16:50:18|1973-02-10 20:30:50|2006-03-31 08:11:13|
-- 22|     30|      29|            2|2019-04-26 21:39:44|1985-06-13 22:04:34|2004-09-27 23:08:17|
-- 19|     43|       3|            3|2017-10-29 07:32:33|1975-08-08 09:17:38|1994-07-27 18:56:30|
-- 29|     89|      25|            2|2017-06-15 16:51:17|2016-03-22 09:03:30|1996-12-19 13:01:05|
-- 69|     74|      59|            2|2015-12-19 05:17:15|1996-07-09 06:24:32|2006-10-13 18:54:29|
-- 37|     89|      24|            1|2015-01-06 18:47:01|1994-02-09 20:59:27|1992-02-09 18:02:48|
--  2|     53|      21|            1|2014-05-20 05:38:37|2002-10-01 03:27:50|1990-10-28 16:48:40|
-- 67|     47|      20|            3|2014-01-09 12:04:24|1988-05-10 07:08:17|1975-03-13 04:48:25|
-- 52|     94|      83|            3|2013-09-26 08:56:24|1975-05-01 10:28:07|2000-05-17 17:02:10|
-- 94|      4|      48|            1|2013-02-05 18:02:20|2002-04-21 21:17:50|1991-09-15 17:23:08|

-- Ну или топ 10 секторов с наибольшим количеством маршрутов

CREATE OR REPLACE VIEW top_10_biggest_sectors AS 
SELECT 
	s.name sector, 
	ss.name spot, 
	rr.name region, 
	COUNT(DISTINCT r.id) as routes_count 
	FROM
		sectors s
	LEFT JOIN routes r
		ON r.sector_id = s.id
	LEFT JOIN spots ss
		ON s.spot_id = ss.id
	LEFT JOIN regions rr
		ON s.region_id = rr.id
GROUP BY s.id
ORDER BY routes_count DESC
LIMIT 10;

-- Здесь DISTINCT наверное излешний, поскольку маршруты только к секторам могут принадлежать, а сектор входит однозначно только в один район и в один регион, но так - уже перестраховаться )

SELECT * FROM top_10_biggest_sectors;

-- sector     |spot     |region     |routes_count|
-- -----------|---------|-----------|------------|
-- repellendus|tempore  |nesciunt   |           4|
-- deleniti   |laborum  |dolor      |           3|
-- est        |esse     |perferendis|           3|
-- aliquam    |veritatis|eos        |           3|
-- aliquid    |vel      |provident  |           3|
-- voluptatem |fugiat   |velit      |           3|
-- quidem     |rerum    |ut         |           3|
-- et         |aperiam  |tenetur    |           2|
-- nihil      |dicta    |qui        |           2|
-- occaecati  |et       |ipsa       |           2|

-- Наверное пока на этом закончу
-- Сорри за малое количество примеров запросов - но и так по времени не уложился в срок (




