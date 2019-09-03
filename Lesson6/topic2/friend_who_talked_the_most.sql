-- Пусть задан некоторый пользователь. 
-- Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользоваетелем.


SELECT id FROM users WHERE id IN (SELECT user_id FROM friendship WHERE friend_id=1 UNION SELECT friend_id FROM friendship WHERE user_id=1);
