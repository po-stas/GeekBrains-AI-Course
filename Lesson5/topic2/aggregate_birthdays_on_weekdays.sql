-- Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни недели текущего года, а не года рождения.
-- Заменяем год рождения на текущий, с помощью функции WEEKDAY получаем день недели и аггрегируем с помощью COUNT..


SELECT WEEKDAY(STR_TO_DATE(DATE_FORMAT(birthday, CONCAT('%d,%m,',DATE_FORMAT(NOW(),'%Y'))), '%d,%m,%Y')) AS weekday, 
	COUNT(*) 
	FROM users 
	GROUP BY weekday 
	ORDER BY weekday;


-- +---------+----------+
-- | weekday | COUNT(*) |
-- +---------+----------+
-- |       0 |       12 |
-- |       1 |       12 |
-- |       2 |       12 |
-- |       3 |       16 |
-- |       4 |       19 |
-- |       5 |       18 |
-- |       6 |       11 |
-- +---------+----------+
-- 7 rows in set (0.00 sec)

-- Ну или то-же самое только с названиями дней недели..

SELECT DAYNAME(STR_TO_DATE(DATE_FORMAT(birthday, CONCAT('%d,%m,',DATE_FORMAT(NOW(),'%Y'))), '%d,%m,%Y')) AS weekday,  
	COUNT(*) AS count 
	FROM users 
	GROUP BY weekday 
	ORDER BY FIELD(weekday, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');

-- +-----------+-------+
-- | weekday   | count |
-- +-----------+-------+
-- | Monday    |    12 |
-- | Tuesday   |    12 |
-- | Wednesday |    12 |
-- | Thursday  |    16 |
-- | Friday    |    19 |
-- | Saturday  |    18 |
-- | Sunday    |    11 |
-- +-----------+-------+
-- 7 rows in set (0.00 sec)
