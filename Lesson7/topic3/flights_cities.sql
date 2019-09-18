-- Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов flights с русскими названиями городов.

-- Создать таблицу с названием колонки 'from' mysql не позволил. Поэтому у меня они называются flight_from, flight_to

SELECT f.id рейс, fc.label откуда, tc.label куда
	FROM flights as f
	JOIN cities as fc
	JOIN cities as tc
	ON (fc.name = f.flight_from 
		AND tc.name = f.flight_to)
	ORDER BY f.id;

-- +----------+------------------+----------------+
-- | рейс     | откуда           | куда           |
-- +----------+------------------+----------------+
-- |        1 | Москва           | Омск           |
-- |        2 | Новгород         | Казань         |
-- |        3 | Иркутск          | Москва         |
-- |        4 | Омск             | Иркутск        |
-- |        5 | Москва           | Казань         |
-- +----------+------------------+----------------+
-- 5 rows in set (0.00 sec)

-- Чудный инструмент! По крайней мере на таких простых задачках.