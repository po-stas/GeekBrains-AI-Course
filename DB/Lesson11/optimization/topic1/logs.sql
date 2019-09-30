-- Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products 
-- в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.

-- Создаем таблицу

CREATE TABLE logs ( 
	id SERIAL, 
	item_id INT UNSIGNED NOT NULL, 
	table_name VARCHAR(100) NOT NULL, 
	item_name VARCHAR(255) NOT NULL, 
	created_at DATETIME DEFAULT NOW()) ENGINE=archive;

-- mysql> DESC logs;
-- +------------+---------------------+------+-----+-------------------+-------------------+
-- | Field      | Type                | Null | Key | Default           | Extra             |
-- +------------+---------------------+------+-----+-------------------+-------------------+
-- | id         | bigint(20) unsigned | NO   | PRI | NULL              | auto_increment    |
-- | item_id    | int(10) unsigned    | NO   |     | NULL              |                   |
-- | table_name | varchar(100)        | NO   |     | NULL              |                   |
-- | item_name  | varchar(255)        | NO   |     | NULL              |                   |
-- | created_at | datetime            | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
-- +------------+---------------------+------+-----+-------------------+-------------------+
-- 5 rows in set (0.00 sec)

-- Видимо это делают триггерами, соответственно создаем такого вида триггеры
-- Для юзеров:

DELIMITER //
CREATE TRIGGER create_users_log AFTER INSERT ON users
	FOR EACH ROW BEGIN
		INSERT INTO logs VALUES (NULL, NEW.id, 'users', NEW.name, NOW());
	END//
DELIMITER ;

-- Проверяем:

INSERT INTO users VALUES (NULL, 'test2', NULL, NULL, NULL);
-- Query OK, 1 row affected (0.02 sec)

-- mysql> SELECT * FROM logs;
-- +----+---------+------------+-----------+---------------------+
-- | id | item_id | table_name | item_name | created_at          |
-- +----+---------+------------+-----------+---------------------+
-- |  1 |       7 | users      | test      | 2019-09-20 17:52:50 |
-- |  2 |       8 | users      | test2     | 2019-09-20 17:54:57 |
-- +----+---------+------------+-----------+---------------------+
-- 2 rows in set (0.01 sec)

-- Ну и для остальных сущностей тоже по аналогии

DELIMITER //
CREATE TRIGGER create_products_log AFTER INSERT ON products
	FOR EACH ROW BEGIN
		INSERT INTO logs VALUES (NULL, NEW.id, 'products', NEW.name, NOW());
	END//

CREATE TRIGGER create_products_log AFTER INSERT ON catalogs
	FOR EACH ROW BEGIN
		INSERT INTO logs VALUES (NULL, NEW.id, 'catalogs', NEW.name, NOW());
	END//
DELIMITER ;

