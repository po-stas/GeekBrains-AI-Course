-- Выведите список товаров products и разделов catalogs, который соответствует товару.

-- Что-то подобное было в видео-лекции
SELECT 	products.name, 
		catalogs.name 
		FROM 
			products 
		JOIN 
			catalogs 
		ON 
			products.catalog_id = catalogs.id
