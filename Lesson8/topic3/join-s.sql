USE vk;



-- Количество лайков 10 самым молодым пользователям
-- Предыдущий вариант:

SELECT COUNT(*) AS likes_count FROM likes WHERE item_id IN (SELECT user_id FROM (
	SELECT user_id, TIMESTAMPDIFF(YEAR, birthday, NOW()) AS age 
	FROM profiles
	ORDER BY age
	LIMIT 10) dummy_table
) AND like_type_id = 2;

-- Вариант через JOIN
-- В предыдущем варианте решения лайки считались только для самого пользователя
-- Исправим это. Выводим лайки для 10 самых молодых пользователей, 
-- а также лайки для их медиа и сообщений.

SELECT 	
		CONCAT(u.firstname, ' ', u.lastname) as user, 
		count(l.id) as count, 
		TIMESTAMPDIFF(YEAR, p.birthday, NOW()) AS age
			FROM users AS u
		INNER JOIN profiles AS p
			ON p.user_id = u.id
		LEFT JOIN media as m
			ON m.user_id = u.id
		LEFT JOIN messages as t
			ON t.from_user_id = u.id
		LEFT JOIN
			likes AS l
				ON l.item_id = u.id AND l.like_type_id = 2 -- лайки для самих пользователей
				OR l.item_id = m.id AND l.like_type_id = 1 -- лайки для их медиа
				OR l.item_id = t.id AND l.like_type_id = 3 -- лайки для их сообщений
		GROUP BY u.id
		ORDER BY p.birthday DESC
	LIMIT 10;

-- user              |count|age|
-- ------------------|-----|---|
-- Evalyn Purdy      |    1|  0|
-- Faye Johns        |    0|  0|
-- Sheila Kulas      |    0|  0|
-- Lupe Nolan        |    1|  0|
-- Mohamed Williamson|    0|  1|
-- Corrine Toy       |    0|  2|
-- Shayne Kuhlman    |    1|  2|
-- Mable Wolf        |    1|  4|
-- Meggie Price      |    0|  4|
-- Jerrod Daugherty  |    1|  4|


-- Просуммируем

SELECT SUM(count) as overall FROM (
	SELECT 	
		CONCAT(u.firstname, ' ', u.lastname) as user, 
		count(l.id) as count, 
		TIMESTAMPDIFF(YEAR, p.birthday, NOW()) AS age
			FROM users AS u
		INNER JOIN profiles AS p
			ON p.user_id = u.id
		LEFT JOIN media as m
			ON m.user_id = u.id
		LEFT JOIN messages as t
			ON t.from_user_id = u.id
		LEFT JOIN
			likes AS l
				ON l.item_id = u.id AND l.like_type_id = 2
				OR l.item_id = m.id AND l.like_type_id = 1
				OR l.item_id = t.id AND l.like_type_id = 3
		GROUP BY u.id
		ORDER BY p.birthday DESC
	LIMIT 10) AS likes;

-- overall|
-- -------|
--       5|



-- Кто больше поставил лайков, мужчины или женщины
-- Предыдущий вариант:

SELECT CASE(sex)
		WHEN 'm' THEN 'male'
		WHEN 'f' THEN 'female'
	END AS sex, 
	COUNT(*) as likes_count FROM 
	(SELECT user_id as user, 
		(SELECT sex FROM profiles WHERE user_id=user) as sex FROM likes) dummy_table 
GROUP BY sex;

-- sex   |likes_count|
-- ------|-----------|
-- female|         51|
-- male  |         47|

-- Через JOIN:

SELECT CASE(p.sex)
		WHEN 'm' THEN 'male'
		WHEN 'f' THEN 'female'
	END AS sex, 
	COUNT(*) AS likes_count FROM 
			vk.likes AS l
		INNER JOIN 
			vk.profiles AS p 
		ON p.user_id = l.user_id
	GROUP BY sex;

-- sex   |likes_count|
-- ------|-----------|
-- female|         51|
-- male  |         47|



-- 10 наименее активных пользователей
-- Предыдущий вариант (по количеству постов, лайков, сообщений):

SELECT CONCAT(firstname, ' ', lastname) AS user, 
	(SELECT COUNT(*) FROM likes WHERE likes.user_id = users.id) + 
	(SELECT COUNT(*) FROM media WHERE media.user_id = users.id) + 
	(SELECT COUNT(*) FROM messages WHERE messages.from_user_id = users.id) 
	AS overall_activity 
	FROM users
	ORDER BY overall_activity
	LIMIT 10;

-- user           |overall_activity|
-- ---------------|----------------|
-- Waylon Grady   |               0|
-- Carroll Blick  |               0|
-- Joseph Gleason |               0|
-- Theresa Ryan   |               0|
-- Orlo Cassin    |               1|
-- Bridie Rogahn  |               1|
-- Aida Macejkovic|               1|
-- Leora Wiza     |               1|
-- Zachary Dickens|               1|
-- Bianka Lynch   |               1|


-- Вариант на JOIN:

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

-- user               |overall_activity|
-- -------------------|----------------|
-- Joseph Gleason     |               0|
-- Theresa Ryan       |               0|
-- Waylon Grady       |               0|
-- Carroll Blick      |               0|
-- Lupe Nolan         |               1|
-- Morgan Pfannerstill|               1|
-- Margarita Doyle    |               1|
-- Patricia Wyman     |               1|
-- Shayne Kuhlman     |               1|
-- Orlo Cassin        |               1|

-- Выборка получилась слегка отличающаяся, просто тех, у кого 1 публикация довольно много
-- Из них не выбрать наименее активных уже )

-- Другой критерий - насколько давно пользователь постил что-либо последний раз, лайкал или общался с кем-либо.
-- Вариант с вложенными запросами:

SELECT CONCAT(firstname, ' ', lastname) AS user, GREATEST(
	IFNULL((SELECT MAX(created_at) FROM likes WHERE likes.user_id = users.id), 0), 
	IFNULL((SELECT MAX(created_at) FROM media WHERE media.user_id = users.id), 0),
	IFNULL((SELECT MAX(created_at) FROM messages WHERE messages.from_user_id = users.id), 0)
) AS last_activity_date 
FROM users
ORDER BY last_activity_date
LIMIT 10;

-- user           |last_activity_date |
-- ---------------|-------------------|
-- Carroll Blick  |0                  |
-- Theresa Ryan   |0                  |
-- Waylon Grady   |0                  |
-- Joseph Gleason |0                  |
-- Lupe Nolan     |1970-03-29 13:33:46|
-- Mozelle Bins   |1975-08-23 16:48:24|
-- Keyshawn Roob  |1977-03-30 09:56:06|
-- Orlo Cassin    |1977-04-26 08:08:16|
-- Margarita Doyle|1977-12-15 19:27:19|
-- Shayne Kuhlman |1980-10-28 19:17:09|

-- Вариант на JOIN:

SELECT CONCAT(u.firstname, ' ', u.lastname) AS user, GREATEST(
	IFNULL(MAX(l.created_at), 0), 
	IFNULL(MAX(m.created_at), 0),
	IFNULL(MAX(t.created_at), 0)) AS last_activity_date
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
	ORDER BY last_activity_date
	LIMIT 10;

-- user           |last_activity_date |
-- ---------------|-------------------|
-- Carroll Blick  |0                  |
-- Theresa Ryan   |0                  |
-- Waylon Grady   |0                  |
-- Joseph Gleason |0                  |
-- Lupe Nolan     |1970-03-29 13:33:46|
-- Mozelle Bins   |1975-08-23 16:48:24|
-- Keyshawn Roob  |1977-03-30 09:56:06|
-- Orlo Cassin    |1977-04-26 08:08:16|
-- Margarita Doyle|1977-12-15 19:27:19|
-- Shayne Kuhlman |1980-10-28 19:17:09|

-- В этом методе всё один в один сходится..


	