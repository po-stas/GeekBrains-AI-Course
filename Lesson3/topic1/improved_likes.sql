-- Удаляем старые таблицы лайков, сделанные ко второму уроку.

USE vk;

DROP TABLE IF EXISTS likes_media;
DROP TABLE IF EXISTS likes_users;
DROP TABLE IF EXISTS likes_messages;
DROP TABLE IF EXISTS likes_statuses;

-- Создаем новую таблицу лайков, рассмотренную в уроке 3.
-- Единственное, не очень понимаю зачем лайку нужен updated_at 
-- лайк либо есть либо его нет и апдейтить его непонятно как.. только удалить.
-- поэтому это поле я не создаю.

CREATE TABLE likes (
	id SERIAL,
	user_id INT UNSIGNED NOT NULL,
	item_id INT UNSIGNED NOT NULL,
	like_type_id INT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- И таблицу типов лайков.

CREATE TABLE likes_types (
	id SERIAL,
	name VARCHAR(255) NOT NULL UNIQUE
);

