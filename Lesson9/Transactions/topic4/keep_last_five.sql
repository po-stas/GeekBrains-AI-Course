-- Пусть имеется любая таблица с календарным полем created_at. 
-- Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.

CREATE OR REPLACE VIEW recent_five AS SELECT * FROM test ORDER BY created_at LIMIT 5;
DELETE FROM test WHERE id NOT IN (SELECT id FROM recent_five);
