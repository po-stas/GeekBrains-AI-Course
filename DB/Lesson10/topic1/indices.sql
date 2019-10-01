-- Начнем с юзеров. 
-- Кажется логичным, что выборку пользователей будут производить 
-- точно по фамилии (возможно по фамилии и имени) или по email.
-- Потенциально возможен поиск по номеру телефона - но это наверное
-- больше к мобильным мессенджерам может иметь отношение, где телефон
-- является обязательным полем.

CREATE UNIQUE INDEX users_email_uq ON users(email);
CREATE INDEX user_fullname_idx ON users(lastname, firstname);


-- Профили. Тут насколько я понимаю по user_id индексы у нас и так уже есть, 
-- поскольку он у нас PRIMARY KEY.
-- Теоретически, дни рождения можно проиндексировать, 
-- и может быть город. Но город наверное не будем пока... Не уверен насколько это
-- Часто будет нужно, и потом он довольно сильно повторяющийся будет.

CREATE INDEX profile_birthday_idx ON profiles(birthday);

-- Сообщения. Здесь вероятно важны будут запросы вида 
-- "от пользователя начиная с такой-то даты", и "для пользователя начиная с такой-то даты"
-- На первый вариант у нас индекс создан PRIMARY ключом, 
-- а на второй случай добавим индекс

CREATE UNIQUE INDEX messages_to_user_uq ON messages(to_user_id, created_at);

-- Дружба. Тут также, как и в сообщениях, "дружба" от и "дружба к". 
-- "Дружба от" у нас уже проиндексирована, добавляем на "дружбу к".

CREATE UNIQUE INDEX friendship_to_friend_uq ON friendship(friend_id, user_id);

-- Media. Здесь у нас первичный ключ - id. Сделаем индекс по user_id - created_at.
-- По крайней мере по user_id будут делаться основные выборки, и дата 
-- будет часто пригождаться тоже. Ну и по типам media тоже можно наверное добавить.

CREATE UNIQUE INDEX media_user_created_at_uq ON media(user_id, created_at);
CREATE INDEX media_user_media_type_idx ON media(user_id, media_type_id);

-- Likes. Вот тут вопросов больше всего.. По user_id (и возможно created_at) 
-- Имеет наверное смысл точно сделать индекс. А вот что делать с item_id
-- не очень понятно, поскольку он относится к совершенно разным таблицам.
-- В целом представляется, что можно иметь индекс и в таком виде,
-- Ну будут они отсортированы по id своих сущностей, все равно это 
-- Ускорит процесс выборки и сортировки даже по одной конкретной сущности..
-- Не будет ли это слишком тяжелым для поддержания с точки зрения сервера?

CREATE UNIQUE INDEX likes_user_created_at_uq ON likes(user_id, created_at);
CREATE UNIQUE INDEX likes_user_item_created_at_uq ON likes(user_id, item_id, created_at);

-- Либо, как в случае с нашим запросом на все лайки всех сущностей для пользователя
-- Возможно было бы целесообразно иметь такой монстро-индекс.
-- Не уверен будет ли он работать как надо..

CREATE INDEX likes_user_item_type_idx ON likes(user_id, item_id, like_type_id);


-- Communities. Тут индексировать можно только по имени. Не знаю имеет ли смысл...

-- Communities-users. Тут есть первичный ключ по community_id-user_id,
-- Можно наверное добавить и просто по user_id, все-таки запрос групп, 
-- в которых участвует юзер - довольно частая мне кажется вещь

CREATE INDEX communities_user_id_idx ON communities_users(user_id);

-- Думаю пока всё.. Не много ли получилось? ))
