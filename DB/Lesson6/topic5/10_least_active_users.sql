-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

-- Критерии неактивности могут быть разными.. первый вариант - кто из пользователей поставил меньше всего лайков,
-- Запостил меньше всего медиа, и отправил меньше всего сообщений.. 

SELECT CONCAT(firstname, ' ', lastname) AS user, 
	(SELECT COUNT(*) FROM likes WHERE likes.user_id = users.id) + 
	(SELECT COUNT(*) FROM media WHERE media.user_id = users.id) + 
	(SELECT COUNT(*) FROM messages WHERE messages.from_user_id = users.id) 
	AS overall_activity 
	FROM users
	ORDER BY overall_activity
	LIMIT 10;

-- +---------------------+------------------+
-- | user                | overall_activity |
-- +---------------------+------------------+
-- | Bridie Rogahn       |                1 |
-- | Aida Macejkovic     |                1 |
-- | Waylon Grady        |                1 |
-- | Russel Daugherty    |                1 |
-- | Carroll Blick       |                1 |
-- | Gianni Fritsch      |                1 |
-- | Evalyn Purdy        |                1 |
-- | Joseph Gleason      |                1 |
-- | Theresa Ryan        |                1 |
-- | Morgan Pfannerstill |                1 |
-- +---------------------+------------------+
-- 10 rows in set (0.00 sec)

-- Другой критерий - насколько давно пользователь постил что-либо последний раз, лайкал или общался с кем-либо.

SELECT CONCAT(firstname, ' ', lastname) AS user, GREATEST(
	IFNULL((SELECT MAX(created_at) FROM likes WHERE likes.user_id = users.id), 0), 
	IFNULL((SELECT MAX(created_at) FROM media WHERE media.user_id = users.id), 0),
	IFNULL((SELECT MAX(created_at) FROM messages WHERE messages.from_user_id = users.id), 0)
) AS last_activity_date 
FROM users
ORDER BY last_activity_date
LIMIT 10;

-- +-----------------+---------------------+
-- | user            | last_activity_date  |
-- +-----------------+---------------------+
-- | Joseph Gleason  | 1971-04-07 14:01:11 |
-- | Carroll Blick   | 1973-07-05 11:27:13 |
-- | Mozelle Bins    | 1975-08-23 16:48:24 |
-- | Lupe Nolan      | 1976-11-15 19:49:39 |
-- | Keyshawn Roob   | 1977-04-09 01:59:02 |
-- | Orlo Cassin     | 1977-10-01 22:00:58 |
-- | Margarita Doyle | 1977-12-15 19:27:19 |
-- | Waylon Grady    | 1978-07-16 11:17:33 |
-- | Shayne Kuhlman  | 1980-10-28 19:17:09 |
-- | Theresa Ryan    | 1981-04-26 04:37:09 |
-- +-----------------+---------------------+
-- 10 rows in set (0.01 sec)

