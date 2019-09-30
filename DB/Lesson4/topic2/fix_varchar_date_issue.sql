-- Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR 
-- и в них долгое время помещались значения в формате "20.10.2017 8:10". 
-- Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.

-- Исходя из наших текущих умений, сделаем это через промежуточную таблицу..

CREATE TABLE fixed_users (
	id SERIAL,
  	firstname VARCHAR(100) NOT NULL, 
  	lastname VARCHAR(100) NOT NULL,
  	email VARCHAR(120) NOT NULL UNIQUE,
  	phone VARCHAR(120) NOT NULL UNIQUE,
  	created_at DATETIME DEFAULT NOW(),
  	updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
);

INSERT INTO fixed_users SELECT NULL, firstname, lastname, email, phone, STR_TO_DATE(created_at, "%d.%m.%Y %r"), STR_TO_DATE(updated_at, "%d.%m.%Y %r") FROM users;

DROP TABLE users;

ALTER TABLE fixed_users RENAME users;
