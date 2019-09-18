USE vk;

-- Ставим связь профиля с пользователем
ALTER TABLE profiles
	ADD CONSTRAINT profiles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE;
		
-- photo-id в profiles изначально было создано NOT NULL, что неверно, так как в профиле может и не быть фото
ALTER TABLE vk.profiles
	MODIFY photo_id int(10) unsigned;
			
-- Теперь можем сделать констрейн профиля с фото
ALTER TABLE profiles
	ADD CONSTRAINT profiles_photo_id_fk
		FOREIGN KEY (photo_id) REFERENCES media(id)
			ON DELETE SET NULL;

-- По факту это оказалось невозможным, поскольку в одном из профилей photo_id был равен 0
-- Пришлось сделать так:
UPDATE profiles SET photo_id=NULL WHERE photo_id=0;
-- После чего всё отработало без ошибок.

-- Вообще впринципе по-идее множество профилей может не иметь фото
-- В моих тестовых данных поле photo_id было заполнено случайными значениями от 0 до 99
-- что вообще не правильно. Поскольку некоторые записи в media на которые ссылаются профили - вообще не фотографии
-- Пробуем исправить это:

UPDATE profiles SET photo_id=NULL 
	WHERE photo_id IN 
		(SELECT id FROM media 
			WHERE (SELECT name FROM media_types 
				WHERE id=media.media_type_id) NOT LIKE 'image');
			
-- Теперь всё более менее правильно
			
SELECT 	
	u.id, 
	CONCAT(u.firstname, ' ', u.lastname) as user, 
	p.photo_id 
	FROM profiles as p 
		INNER JOIN users as u 
			ON u.id=p.user_id
ORDER BY u.id;

-- id |user                |photo_id|
-- ---|--------------------|--------|
--   1|Dorothy Grady       |       6|
--   2|Keon Rogahn         |        |
--   3|Yasmeen Smitham     |      20|
--   4|Elsie Crist         |        |
--   5|Lupe Nolan          |        |
--   6|Mohamed Williamson  |      14|
--   7|Oswaldo Oberbrunner |        |
--   8|Wilhelm Gerhold     |      21|
--   9|Sonia Williamson    |      95|
--  10|Felipe Dickens      |      25|
--  11|Luna Waters         |        |
-- .......
-- И так далее..

-- Наконец продолжим c ключами: 
-- медиа линкуем к users - удаляем осиротевшие записи в media автоматом.
-- А вот весь медиа тип можем удалять только если нет ни одной медиа-записи, принадлежащей данному типу.

ALTER TABLE media
	ADD CONSTRAINT media_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT media_type_id_fk
		FOREIGN KEY (media_type_id) REFERENCES media_types(id);
	
		
-- Communities
-- Запись комьюнити-юзер удаляется в любом случае, если юзер удален и если комьюнити удалено

ALTER TABLE vk.communities_users
	ADD CONSTRAINT community_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id)
			ON DELETE CASCADE;
		
-- Likes
-- Когда удаляется хозяин - лайки тоже все вычищаются.
-- Другой вариант поведения (не давать удалять юзера с лайками) тоже впринципе оправдан..
-- При удалении целого типа из like_types будет осуществлена проверка были ли лайки этого типа.
-- А вот удаление объекта лайка мы автоматически отследить пока не можем, поэтому такую связь не реализуем.

ALTER TABLE vk.likes
	ADD CONSTRAINT like_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT like_type_id_fk
		FOREIGN KEY (like_type_id) REFERENCES like_types(id);
		

-- Messages. Тут мы решили вроде просто не давать удалять пользователя, если у него есть сообщения..
-- (хотя лично я бы просто удалял сообщения вместе с аккаунтом пользователя.. неверно мне кажется заставлять пользователя,
-- решившего удалить свой аккаунт, ходить и сначала удалять все свои сообщения... 
-- (ну либо реализовывать какую-то логику в приложении на этот счет надо))
-- Но, пока оставляю как в лекции было.

ALTER TABLE vk.messages
	ADD CONSTRAINT message_from_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users(id),
	ADD CONSTRAINT message_to_user_id_fk
		FOREIGN KEY (to_user_id) REFERENCES users(id);
	

-- Friendship. Думаю все-таки сначала выходить из всех дружб, а потом удалять аккаунт - это странная логика.
-- Поэтому просто удаляем дружбу при удалении хоть одного ее участника.

ALTER TABLE vk.friendship
	ADD CONSTRAINT friendship_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE CASCADE,
	ADD CONSTRAINT friendship_friend_id_fk
		FOREIGN KEY (friend_id) REFERENCES users(id)
		ON DELETE CASCADE;

-- 



