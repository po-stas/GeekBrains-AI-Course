-- Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день",
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

-- Не хочет DBeaver такое исполнять ни в какую. Получается только в консоли.

DELIMITER //
CREATE PROCEDURE hello()
BEGIN
	SET @d = EXTRACT(HOUR FROM NOW());
	SELECT IF(@d >= 0 AND @d < 6, 'Good night', 
		IF(@d >= 6 AND @d < 12, 'Good morning', 
			IF(@d >= 12 AND @d < 18, 'Good afternon', 
				'Good evening'))) AS hello;
END//
DELIMITER ;

CALL hello();

-- +--------------+
-- | hello        |
-- +--------------+
-- | Good evening |
-- +--------------+
-- 1 row in set (0.00 sec)
-- Query OK, 0 rows affected (0.00 sec)