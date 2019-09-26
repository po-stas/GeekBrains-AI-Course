-- Проверить, исправить при необходимости и оптимизировать следующий запрос:

SELECT CONCAT(u.firstname, ' ', u.lastname) AS user, 
	COUNT(l.id) + COUNT(m.id) + COUNT(t.id) AS overall_activity
		FROM users AS u
	LEFT JOIN
		likes AS l
			ON l.user_id = u.id
	LEFT JOIN
		media AS m
			ON m.user_id = u.id
	LEFT JOIN
		messages AS t
			ON t.from_user_id = u.id
	GROUP BY u.id
	ORDER BY overall_activity
	LIMIT 10;
	
-- Ну здесь, как и в запросе, разобранном на лекции, сказалось моё недопонимание механики join 
-- Также точно здесь в выборку могут попадать дублирующиеся лайки, медиа и сообщения
-- В случае, если скажем пользователь сделал два лайка, он попадет выборку дважды после первого джоина
-- И во втором джоине (с медиа) если у него есть медиа посты, они удвоятся, то же самое будет в третьем
-- join-е.. 
-- Исправить ситуацию можно также - взяв лишь уникальные id лайков, медиа и сообщений

SELECT CONCAT(u.firstname, ' ', u.lastname) AS user, 
	COUNT(DISTINCT l.id) + COUNT(DISTINCT m.id) + COUNT(DISTINCT t.id) AS overall_activity
		FROM users AS u
	LEFT JOIN
		likes AS l
			ON l.user_id = u.id
	LEFT JOIN
		media AS m
			ON m.user_id = u.id
	LEFT JOIN
		messages AS t
			ON t.from_user_id = u.id
	GROUP BY u.id
	ORDER BY overall_activity
	LIMIT 10;
	
-- Для начала проверим какие результаты дают запросы
-- Чтобы увидеть максимально репрезентативно возьмем пользователей с максимальной активностью а не с минимальной

SELECT CONCAT(u.firstname, ' ', u.lastname) AS user, 
	COUNT(l.id) + COUNT(m.id) + COUNT(t.id) AS overall_activity
		FROM users AS u
	LEFT JOIN
		likes AS l
			ON l.user_id = u.id
	LEFT JOIN
		media AS m
			ON m.user_id = u.id
	LEFT JOIN
		messages AS t
			ON t.from_user_id = u.id
	GROUP BY u.id
	ORDER BY overall_activity DESC
	LIMIT 10;
	

-- user              |overall_activity|
-- ------------------|----------------|
-- Oceane Bode       |              20|
-- Ricky McKenzie    |              12|
-- Bonita Littel     |              12|
-- Demarco Zulauf    |               9|
-- Mohamed Williamson|               9|
-- Dorothy Grady     |               9|
-- Crawford Gulgowski|               9|
-- Keshawn Ryan      |               8|
-- Jerrod Daugherty  |               8|
-- Loy Schowalter    |               8|

-- Теперь запрос с ограничением по уникальности

SELECT u.id, CONCAT(u.firstname, ' ', u.lastname) AS user, 
	COUNT(DISTINCT l.id) + COUNT(DISTINCT m.id) + COUNT(DISTINCT t.id) AS overall_activity
		FROM users AS u
	LEFT JOIN
		likes AS l
			ON l.user_id = u.id
	LEFT JOIN
		media AS m
			ON m.user_id = u.id
	LEFT JOIN
		messages AS t
			ON t.from_user_id = u.id
	GROUP BY u.id
	ORDER BY overall_activity DESC
	LIMIT 10;
	
-- user              |overall_activity|
-- ------------------|----------------|
-- Oceane Bode       |               7|
-- Dorothy Grady     |               5|
-- Keshawn Ryan      |               5|
-- Bonita Littel     |               5|
-- Jerrod Daugherty  |               5|
-- Crawford Gulgowski|               5|
-- Loy Schowalter    |               5|
-- Demarco Zulauf    |               5|
-- Mohamed Williamson|               5|
-- Ricky McKenzie    |               5|

-- Совсем другая картина
-- Проверим кого нибудь конкретного

SELECT id FROM users WHERE firstname="Oceane";

-- id|
-- --|
-- 79|

SELECT count(id) AS likes FROM likes WHERE user_id=79 GROUP BY user_id;

-- likes|
-- -----|
--     2|

SELECT count(id) AS messages FROM messages WHERE FROM_user_id=79 GROUP BY from_user_id;

-- messages|
-- --------|
--        5|

SELECT count(id) AS media FROM media WHERE user_id=79 GROUP BY user_id;

-- media|
-- -----|

-- Итого - 2 лайка, 5 сообщений, 0 медиа = 7 - всё совпадает

-- user              |overall_activity|
-- ------------------|----------------|
-- Oceane Bode       |               7|

-- Можно заняться оптимизацией.
-- Лишних таблиц (как в предыдущем запросе мы тут не используем, есть только то, что нужно users, likes, media и messages)
-- Индексы (likes-user_id, media-user_id, messages-from_user_id) уже созданы. 

SELECT CONCAT(users.firstname, ' ', users.lastname) AS user, 
	COUNT(DISTINCT likes.id) + COUNT(DISTINCT media.id) + COUNT(DISTINCT messages.id) AS overall_activity
		FROM users
	LEFT JOIN
		likes
			ON likes.user_id = users.id
	LEFT JOIN
		media
			ON media.user_id = users.id
	LEFT JOIN
		messages
			ON messages.from_user_id = users.id
	GROUP BY users.id
	ORDER BY overall_activity DESC
	LIMIT 10;

-- Скриншот диаграммы из workbench diag_01.png 
-- В моем малом опыте в данном вопросе - всё выглядит неплохо уже сейчас. 
-- Единственное, EXPLAIN в графе EXTRA не упоминает использование индекса для messages
-- (хотя индекс используется PRIMARY - он у меня from_user_id, created_at)

-- id|select_type|table   |partitions|type |possible_keys                                       |key                     |key_len|ref        |rows|filtered|Extra                          |
-- --|-----------|--------|----------|-----|----------------------------------------------------|------------------------|-------|-----------|----|--------|-------------------------------|
--  1|SIMPLE     |users   |          |index|PRIMARY,email,phone,users_email_uq,user_fullname_idx|PRIMARY                 |4      |           |  98|     100|Using temporary; Using filesort|
--  1|SIMPLE     |likes   |          |ref  |likes_user_item_type_idx                            |likes_user_item_type_idx|4      |vk.users.id|   1|     100|Using index                    |
--  1|SIMPLE     |media   |          |ref  |media_user_created_at_uq,media_user_media_type_idx  |media_user_created_at_uq|4      |vk.users.id|   1|     100|Using index                    |
--  1|SIMPLE     |messages|          |ref  |PRIMARY                                             |PRIMARY                 |4      |vk.users.id|   1|     100|                               |

-- дальнейшие пути оптимизации наводят на мысли о том, чтобы не делать дублирующихся записей еще на этапе выборки,
-- Но тогда нужно наверное джоинить таблицы парами (users-likes, users-media, users-messages) и объединять результаты юнионом..
-- Но в данном примере боюсь это всё только утяжелит. Хотя попробуем:


SELECT CONCAT(firstname, ' ', lastname) AS user, 
	SUM(count) AS overall_activity
		FROM 
		(SELECT users.id, users.firstname, users.lastname, COUNT(likes.id) AS count FROM 
			users
		LEFT JOIN
			likes
				ON likes.user_id = users.id
			GROUP BY users.id
	UNION ALL 
		SELECT users.id, users.firstname, users.lastname, COUNT(media.id) AS count FROM 
			users
		LEFT JOIN
			media
				ON media.user_id = users.id
			GROUP BY users.id
	UNION ALL
		SELECT users.id, users.firstname, users.lastname, COUNT(messages.id) AS count FROM 
			users
		LEFT JOIN
			messages
				ON messages.from_user_id = users.id
			GROUP BY users.id) as temp
	GROUP BY id, firstname, lastname
	ORDER BY overall_activity DESC
	LIMIT 10;

-- user              |overall_activity|
-- ------------------|----------------|
-- Oceane Bode       |               7|
-- Demarco Zulauf    |               5|
-- Mohamed Williamson|               5|
-- Ricky McKenzie    |               5|
-- Dorothy Grady     |               5|
-- Keshawn Ryan      |               5|
-- Bonita Littel     |               5|
-- Jerrod Daugherty  |               5|
-- Crawford Gulgowski|               5|
-- Loy Schowalter    |               5|

-- Запрос работает правильно (проверял вручную по пользователям)
-- Скриншот диаграммы diag_02.png 
-- Теперь количество обработанных строк не возрастает от запроса к запросу (как в предыдущем варианте)
-- Да и цифры приведенной стоимости ниже




