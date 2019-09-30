-- Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

-- 10 самых молодых (очевидно в нашем приложении нет возрастного ограничения. Куда только смотрят соответствующие органы :))

SELECT (SELECT CONCAT(firstname, ' ', lastname) FROM users WHERE id=user_id) AS user, 
	TIMESTAMPDIFF(YEAR, birthday, NOW()) AS age FROM profiles
	ORDER BY age
	LIMIT 10;

-- +--------------------+------+
-- | user               | age  |
-- +--------------------+------+
-- | Evalyn Purdy       |    0 |
-- | Lupe Nolan         |    0 |
-- | Faye Johns         |    0 |
-- | Sheila Kulas       |    0 |
-- | Mohamed Williamson |    1 |
-- | Corrine Toy        |    2 |
-- | Shayne Kuhlman     |    2 |
-- | Mable Wolf         |    3 |
-- | Meggie Price       |    4 |
-- | Jerrod Daugherty   |    4 |
-- +--------------------+------+
-- 10 rows in set (0.00 sec)

-- Считаем лайки.

SELECT COUNT(*) AS likes_count FROM likes WHERE item_id IN (SELECT user_id FROM (
	SELECT user_id, TIMESTAMPDIFF(YEAR, birthday, NOW()) AS age 
	FROM profiles
	ORDER BY age
	LIMIT 10) dummy_table
) AND like_type_id = 2; -- Type of Like for user

-- +-------------+
-- | likes_count |
-- +-------------+
-- |           1 |
-- +-------------+
-- 1 row in set (0.01 sec)

-- Не густо.. проверил, действительно только один лайк есть у одного пользователя из этой выборки.


-- Ну или более дескриптивно..

SELECT COUNT(*) AS likes_count FROM likes WHERE item_id IN (SELECT user_id FROM (
	SELECT user_id, TIMESTAMPDIFF(YEAR, birthday, NOW()) AS age 
	FROM profiles
	ORDER BY age
	LIMIT 10) dummy_table
) AND (SELECT name FROM like_types WHERE id=like_type_id) LIKE 'users';

-- +-------------+
-- | likes_count |
-- +-------------+
-- |           1 |
-- +-------------+
-- 1 row in set (0.01 sec)

