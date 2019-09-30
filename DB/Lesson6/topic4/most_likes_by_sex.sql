-- Определить кто больше поставил лайков (всего) - мужчины или женщины?


SELECT CASE(sex)
		WHEN 'm' THEN 'male'
		WHEN 'f' THEN 'female'
	END AS sex, 
	COUNT(*) as likes_count FROM 
	(SELECT user_id as user, 
		(SELECT sex FROM profiles WHERE user_id=user) as sex FROM likes) dummy_table 
GROUP BY sex;

-- +--------+-------------+
-- | sex    | likes_count |
-- +--------+-------------+
-- | female |          51 |
-- | male   |          47 |
-- +--------+-------------+
-- 2 rows in set, 1 warning (0.00 sec)

-- Мужчины меньше лайков поставили (хоть их и больше количественно):

SELECT COUNT(*) AS count, 
	CASE(sex)
		WHEN 'm' THEN 'male'
		WHEN 'f' THEN 'female'
	END AS sex
	FROM profiles
    GROUP BY sex;

-- +-------+--------+
-- | count | sex    |
-- +-------+--------+
-- |    47 | female |
-- |    53 | male   |
-- +-------+--------+
-- 2 rows in set, 1 warning (0.00 sec)
