-- Проанализировать запросы, которые выполнялись на занятии, определить возможные корректировки и/или улучшения (JOIN пока не применять).

-- Получаем фотографии пользователя
SELECT filename FROM media
  WHERE user_id = 1
    AND media_type_id = (
      SELECT id FROM media_types WHERE name LIKE '%image%'
    );

 -- Теоретически можно тут выводить всё-таки пользователя тоже...

 SELECT 
 (SELECT CONCAT(firstname, ' ', lastname) FROM users WHERE id=user_id) user,
 filename FROM media
  WHERE user_id = 1
    AND media_type_id = (
      SELECT id FROM media_types WHERE name LIKE '%image%'
    );

-- +---------------+---------------------------------------+
-- | user          | filename                              |
-- +---------------+---------------------------------------+
-- | Dorothy Grady | /6676b6dd54cf4ec5b51dfac6bbbc5c69.jpg |
-- +---------------+---------------------------------------+
-- 1 row in set (0.00 sec)




-- Выбираем только друзей с подтверждённым статусом
(SELECT friend_id 
  FROM friendship 
  WHERE user_id = 1
    AND confirmed_at IS NOT NULL 
    AND status IS NOT NULL
)
UNION
(SELECT user_id 
  FROM friendship 
  WHERE friend_id = 1
    AND confirmed_at IS NOT NULL 
    AND status IS NOT NULL
);

-- Здесь тоже можно выводить не только id а имена друзей..

(SELECT (SELECT CONCAT(firstname, ' ', lastname) FROM users WHERE id=friend_id) friend
  FROM friendship 
  WHERE user_id = 1
    AND confirmed_at IS NOT NULL 
    AND status IS NOT NULL
)
UNION
(SELECT (SELECT CONCAT(firstname, ' ', lastname) FROM users WHERE id=user_id) friend
  FROM friendship 
  WHERE friend_id = 1
    AND confirmed_at IS NOT NULL 
    AND status IS NOT NULL
);

-- +----------------------+
-- | friend               |
-- +----------------------+
-- | Merle Berge          |
-- | Dedric Mayer         |
-- | Dominique Morissette |
-- +----------------------+
-- 3 rows in set (0.00 sec)

-- Ну и дальше по примерам такое улучшение можно еще в нескольких местах применить.

-- Выбираем медиафайлы друзей
SELECT filename FROM media WHERE user_id IN (
  (SELECT friend_id 
  FROM friendship 
  WHERE user_id = 1
    AND confirmed_at IS NOT NULL 
    AND status IS NOT NULL
  )
  UNION
  (SELECT user_id 
    FROM friendship 
    WHERE friend_id = 1
      AND confirmed_at IS NOT NULL 
      AND status IS NOT NULL
  )
);


SELECT filename FROM media WHERE user_id IN (
  (SELECT (SELECT CONCAT(firstname, ' ', lastname) FROM users WHERE id=friend_id) friend
  FROM friendship 
  WHERE user_id = 2
    AND confirmed_at IS NOT NULL 
    AND status IS NOT NULL
  )
  UNION
  (SELECT (SELECT CONCAT(firstname, ' ', lastname) FROM users WHERE id=user_id) friend
    FROM friendship 
    WHERE friend_id = 2
      AND confirmed_at IS NOT NULL 
      AND status IS NOT NULL
  )
);

-- И так далее.... Можно еще занимаемое место показывать в МБ.. так удобнее смотреть.

-- Определяем пользователей, общее занимаемое место медиафайлов которых 
-- превышает 1МБ

SELECT user_id, SUM(size) AS total
  FROM media
  GROUP BY user_id
  HAVING total > 1000
  ORDER BY total DESC;


SELECT (SELECT CONCAT(firstname, ' ', lastname) FROM users WHERE id=user_id) AS user, 
  CONCAT(ROUND(SUM(size)/1000), ' MB') AS total
  FROM media
  GROUP BY user_id
  HAVING SUM(size) > 1000
  ORDER BY SUM(size) DESC;

-- +----------------------+-----------+
-- | user                 | total     |
-- +----------------------+-----------+
-- | Zachary Dickens      | 621764 MB |
-- | Miles Lubowitz       | 495586 MB |
-- | Halle Corkery        | 349395 MB |
-- | Johan Willms         | 339825 MB |
-- | Drake Dare           | 178631 MB |
-- | Noah Turcotte        | 121076 MB |
-- | Patricia Wyman       | 73572 MB  |
-- | Sonia Williamson     | 70498 MB  |
-- | Nathanial Grant      | 62255 MB  |

-- .........

-- | Lillian Bernhard     | 27 MB     |
-- | Meggie Price         | 22 MB     |
-- | Lupe Nolan           | 20 MB     |
-- | Dedric Mayer         | 13 MB     |
-- | Russel Daugherty     | 12 MB     |
-- | Evalyn Purdy         | 8 MB      |
-- | Keyshawn Roob        | 7 MB      |
-- | Demarco Zulauf       | 5 MB      |
-- | Aida Macejkovic      | 4 MB      |
-- | Cody Schneider       | 2 MB      |
-- +----------------------+-----------+
-- 59 rows in set (0.00 sec)

-- Пока из улучшений больше ничего не придумалось )
