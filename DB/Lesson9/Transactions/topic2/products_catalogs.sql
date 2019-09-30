-- Создайте представление, которое выводит название name товарной позиции из таблицы products 
-- и соответствующее название каталога name из таблицы catalogs.

CREATE VIEW products_catalogs AS 
	SELECT 	p.name AS product, 
			c.name AS catalog 
				FROM shop.products AS p 
			LEFT JOIN 
				shop.catalogs AS c 
					ON p.catalog_id = c.id;


SELECT * FROM products_catalogs;

-- +-------------------------+-----------------------------------+
-- | product                 | catalog                           |
-- +-------------------------+-----------------------------------+
-- | Intel Core i3-8100      | Процессоры                        |
-- | Intel Core i5-7400      | Процессоры                        |
-- | AMD FX-8320E            | Процессоры                        |
-- | AMD FX-8320             | Процессоры                        |
-- | ASUS ROG MAXIMUS X HERO | Материнские платы                 |
-- | Gigabyte H310M S2H      | Материнские платы                 |
-- | MSI B250M GAMING PRO    | Материнские платы                 |
-- +-------------------------+-----------------------------------+
-- 7 rows in set (0.00 sec)
