-- Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT users.name 
	FROM users 
	JOIN orders 
	ON users.id = orders.user_id 
	GROUP BY name;

-- +--------------------+
-- | name               |
-- +--------------------+
-- | Геннадий           |
-- | Наталья            |
-- | Александр          |
-- | Иван               |
-- +--------------------+
-- 4 rows in set (0.00 sec)

-- Ну или если надо вывести и количество заказов от конкретных лиц.

SELECT users.name, COUNT(*) AS orders_count
	FROM users 
	JOIN orders 
	ON users.id = orders.user_id 
	GROUP BY name;

-- +--------------------+--------------+
-- | name               | orders_count |
-- +--------------------+--------------+
-- | Геннадий           |            1 |
-- | Наталья            |            1 |
-- | Александр          |            2 |
-- | Иван               |            2 |
-- +--------------------+--------------+
-- 4 rows in set (0.00 sec)
