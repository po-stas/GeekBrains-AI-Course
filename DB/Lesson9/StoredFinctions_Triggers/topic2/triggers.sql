-- В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. Ситуация, 
-- когда оба поля принимают неопределенное значение NULL неприемлема. Используя триггеры, 
-- добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.

DELIMITER //
CREATE TRIGGER check_for_null_columns BEFORE INSERT ON products
	FOR EACH ROW BEGIN
		IF NEW.name IS NULL AND NEW.description IS NULL THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Both fields (name and description) cannot be NULL at the same time.';
		END IF;
	END//

CREATE TRIGGER check_for_update_null_columns BEFORE UPDATE ON products
	FOR EACH ROW BEGIN
		IF NEW.name IS NULL AND NEW.description IS NULL THEN
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Both fields (name and description) cannot be NULL at the same time.';
		END IF;
	END//

DELIMITER ;

INSERT INTO `products` (`id`, `name`, `description`, `price`, `catalog_id`) VALUES (1000, NULL, NULL, 1000, 1);
-- ERROR 1644 (45000): Both fields (name and description) cannot be NULL at the same time.
