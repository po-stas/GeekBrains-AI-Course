-- Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
-- Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
-- Вызов функции FIBONACCI(10) должен возвращать число 55.

DELIMITER //
CREATE PROCEDURE FIBONACCI(IN num INT)
BEGIN
	DECLARE first INT DEFAULT 0;
	DECLARE second INT DEFAULT 0;
	DECLARE sum INT DEFAULT 0;
	DECLARE i INT DEFAULT 0;
	WHILE i < num DO
		SET sum = first + second;
		SET first = second;
		SET second = sum;
		SET i = i + 1;
		IF second = 0 THEN 
			SET second = i;
		END IF;
	END WHILE;

	SELECT second AS sum;
END//
DELIMITER ;

CALL FIBONACCI(10);

-- +-----+
-- | sum |
-- +-----+
-- |  55 |
-- +-----+
-- 1 row in set (0.00 sec)

-- Вообще это наверное какие-нибудь крайние случаи, когда нужно писать код такого типа на SQL?
-- Поскольку выглядит конечно невероятно громоздко..
-- По сравнению с каким нибудь Python:

def fibonacci(num):
	fib = [0, 1]
	for i in range(1, num):
		fib.append(fib[-1] + fib[-2])
	print(fib[-1])
