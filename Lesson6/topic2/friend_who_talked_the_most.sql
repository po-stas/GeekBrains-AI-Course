-- Пусть задан некоторый пользователь. 
-- Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользоваетелем.

-- Уфф.. похоже получился некий франкенштейн.. Думаю как-то это можно изящнее и проще наверняка рещить.. итак:
-- Сообщения считаем только от друзей. Получить друзей пользователя №1 (в обе стороны) мы можем как демонстрировалось на лекции

SELECT user_id FROM friendship 
	WHERE friend_id=1
	AND confirmed_at IS NOT NULL
	UNION 
	SELECT friend_id FROM friendship 
	WHERE user_id=1 
	AND confirmed_at IS NOT NULL;

-- +---------+
-- | user_id |
-- +---------+
-- |      23 |
-- |      50 |
-- |      53 |
-- +---------+
-- 3 rows in set (0.00 sec)

-- Далее.. Сообщения тоже могут быть в две стороны (пользователю от друга и другу от пользователя)
-- Это сообщения от друзей -> пользователю №1

SELECT (SELECT CONCAT(firstname, ' ', lastname) FROM users WHERE id=from_user_id) AS username 
	FROM messages 
	WHERE from_user_id IN 
	(SELECT user_id FROM friendship 
		WHERE friend_id=1 
		AND confirmed_at IS NOT NULL
		UNION 
		SELECT friend_id FROM friendship 
		WHERE user_id=1
		AND confirmed_at IS NOT NULL
		) 
	AND to_user_id=1;

-- +----------------------+
-- | username             |
-- +----------------------+
-- | Dedric Mayer         |
-- | Dedric Mayer         |
-- | Dominique Morissette |
-- +----------------------+
-- 3 rows in set (0.00 sec)

-- Теперь наоборот. От пользователя №1 -> друзьям:

SELECT (SELECT CONCAT(firstname, ' ', lastname) FROM users WHERE id=to_user_id) AS username 
	FROM messages 
	WHERE to_user_id IN 
	(SELECT user_id FROM friendship 
		WHERE friend_id=1 
		AND confirmed_at IS NOT NULL
		UNION 
		SELECT friend_id FROM friendship 
		WHERE user_id=1
		AND confirmed_at IS NOT NULL
		) 
	AND from_user_id=1;

-- +--------------+
-- | username     |
-- +--------------+
-- | Dedric Mayer |
-- | Dedric Mayer |
-- +--------------+
-- 2 rows in set (0.00 sec)

-- Всё это надо объединить.. Не знал, что UNION может работать в разных режимах, чуть голову не сломал, пока не нагуглил что есть UNION ALL и UNION DISTINCT..
-- Итак:

SELECT user FROM (
	SELECT (SELECT CONCAT(firstname, ' ', lastname) FROM users WHERE id=from_user_id) AS user FROM messages 
		WHERE from_user_id IN 
			(SELECT user_id FROM friendship 
				WHERE friend_id=1 
				AND confirmed_at IS NOT NULL
			UNION 
			SELECT friend_id FROM friendship 
				WHERE user_id=1
				AND confirmed_at IS NOT NULL) 
		AND to_user_id=1
	UNION ALL
	SELECT (SELECT CONCAT(firstname, ' ', lastname) FROM users WHERE id=to_user_id) AS user FROM messages 
		WHERE to_user_id IN 
			(SELECT user_id FROM friendship 
				WHERE friend_id=1
				AND confirmed_at IS NOT NULL
			UNION 
			SELECT friend_id FROM friendship 
				WHERE user_id=1
				AND confirmed_at IS NOT NULL
			)
		AND from_user_id=1
) dummy_table;

-- +----------------------+
-- | user                 |
-- +----------------------+
-- | Dedric Mayer         |
-- | Dedric Mayer         |
-- | Dominique Morissette |
-- | Dedric Mayer         |
-- | Dedric Mayer         |
-- +----------------------+
-- 5 rows in set (0.00 sec)

-- Дальше просто, аггрегация, сортировка и лимит на 1 запись.

SELECT user, COUNT(*) AS messages FROM (
	SELECT (SELECT CONCAT(firstname, ' ', lastname) FROM users WHERE id=from_user_id) AS user FROM messages 
		WHERE from_user_id IN 
			(SELECT user_id FROM friendship 
				WHERE friend_id=1 
				AND confirmed_at IS NOT NULL
			UNION 
			SELECT friend_id FROM friendship 
				WHERE user_id=1
				AND confirmed_at IS NOT NULL) 
		AND to_user_id=1
	UNION ALL
	SELECT (SELECT CONCAT(firstname, ' ', lastname) FROM users WHERE id=to_user_id) AS user FROM messages 
		WHERE to_user_id IN 
			(SELECT user_id FROM friendship 
				WHERE friend_id=1
				AND confirmed_at IS NOT NULL
			UNION 
			SELECT friend_id FROM friendship 
				WHERE user_id=1
				AND confirmed_at IS NOT NULL
			)
		AND from_user_id=1
) dummy_table
GROUP BY user
ORDER BY messages DESC
LIMIT 1;

-- +--------------+----------+
-- | user         | messages |
-- +--------------+----------+
-- | Dedric Mayer |        4 |
-- +--------------+----------+
-- 1 row in set (0.00 sec)
