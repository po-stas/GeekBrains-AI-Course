-- Попытаться улучшить результат оптимизации примера, который рассмотрен на занятии

-- Исправленная версия
-- Скриншот диаграммы diag01.png

SELECT SUM(count) as overall FROM (
	SELECT 	
		count(DISTINCT likes.id) as count 
			FROM profiles
		LEFT JOIN media
			ON media.user_id = profiles.user_id
		LEFT JOIN messages
			ON messages.from_user_id = profiles.user_id
		LEFT JOIN
			likes
				ON likes.item_id = profiles.user_id AND likes.like_type_id = 2 -- лайки для самих пользователей
				OR likes.item_id = media.id AND likes.like_type_id = 1 -- лайки для их медиа
				OR likes.item_id = messages.id AND likes.like_type_id = 3 -- лайки для их сообщений
		GROUP BY profiles.user_id
		ORDER BY profiles.birthday DESC
	LIMIT 10) as likes;
	
-- Далее с некоторым результатом мы убрали LIMIT в подзапрос
-- диаграмма diag02.png

SELECT SUM(count) as overall FROM (
	SELECT 	
		count(DISTINCT likes.id) as count 
			FROM (SELECT user_id, birthday FROM profiles ORDER BY birthday DESC LIMIT 10) AS profiles
		LEFT JOIN media
			ON media.user_id = profiles.user_id
		LEFT JOIN messages
			ON messages.from_user_id = profiles.user_id
		LEFT JOIN
			likes
				ON likes.item_id = profiles.user_id AND likes.like_type_id = 2 -- лайки для самих пользователей
				OR likes.item_id = media.id AND likes.like_type_id = 1 -- лайки для их медиа
				OR likes.item_id = messages.id AND likes.like_type_id = 3 -- лайки для их сообщений
		GROUP BY profiles.user_id) as likes;
	
-- В попытках избавиться от OR условий разобрал все на отдельные подзапросы
-- чтобы дать возможность на лайках заработать индексам
-- отдельный join для профилей с лайками
-- отдельный для медиа с лайками
-- отдельный для сообщений с лайками
-- и все это юнионом объединяется
-- диаграмма diag03.png

SELECT SUM(count) as overall FROM (
	SELECT user_id, SUM(count) AS count FROM (
		SELECT 	
			profiles.user_id, COUNT(likes.id) AS count
				FROM (SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10) AS profiles
			LEFT JOIN messages
				ON messages.from_user_id = profiles.user_id
			LEFT JOIN likes
				ON likes.item_id = messages.id AND likes.like_type_id = 3
			GROUP BY profiles.user_id
		UNION ALL
			SELECT 	
				profiles.user_id, COUNT(likes.id) AS count
					FROM (SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10) AS profiles
				LEFT JOIN media
					ON media.user_id = profiles.user_id
				LEFT JOIN likes
					ON likes.item_id = media.id AND likes.like_type_id = 1
				GROUP BY profiles.user_id
		UNION ALL
			SELECT 	
				profiles.user_id, COUNT(likes.id) AS count
					FROM (SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10) AS profiles
				LEFT JOIN likes
					ON likes.item_id = profiles.user_id AND likes.like_type_id = 2
				GROUP BY profiles.user_id
		) as united 
	GROUP BY user_id) as likes;

-- Не уверен насчет целесообразности опятьже.. сравнение вроде цифры интереснее показывает

-- Результаты всех запросов проверял на разных выборках (10 и 30 самых молодых - всё совпадает)
