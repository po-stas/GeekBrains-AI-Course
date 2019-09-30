-- Создаем индексы

-- Начинаем с юзеров. Делаем индексы на никнейм и на полное имя
USE allclimb;

CREATE INDEX user_nickname_idx ON users(name);
CREATE INDEX user_fullname_idx ON users(fullname);

-- Девайсы пользователя, PRIMARY есть на device_id поскольку он уникален, добавим еще на user_id
CREATE INDEX device_user_idx ON user_devices(user_id);

-- Профили, индексируются по id пользователя, добавим еще на email
CREATE UNIQUE INDEX profile_email_uq ON profiles(email);

-- В регионы кроме индекса по id имеет смысл добавить индекс по имени
CREATE INDEX region_name_idx ON regions(name);

-- Есть ли смысл индексировать мелкие служебные таблицы типа таблицы стран или категорий? В таких таблицах от 3 до 5  (ну в странах 200 записей)
-- вобщем страны по имени проиндексируем. В любом случае она не будет часто меняться, а ресурсов много на такой индекс не потребуется

CREATE INDEX country_name_idx ON countries(name);

-- в районы добавим индекс по имени и по id региона
CREATE INDEX spot_name_idx ON spots(name);
CREATE INDEX spot_region_id_idx ON spots(region_id);

-- сектора, также имя и владельцы - регион и район
CREATE INDEX sector_name_idx ON sectors(name);
CREATE INDEX sector_region_id_idx ON sectors(region_id);
CREATE INDEX sector_spot_id_idx ON sectors(spot_id);

-- таблица записей о кешированных секторах уже имеет нормальный индекс

-- значки - имя для них необязательный параметр, поэтому индекс только по владельцам, регион и район
CREATE INDEX sign_region_id_idx ON signs(region_id);
CREATE INDEX sign_spot_id_idx ON signs(spot_id);

-- тропы - по региону
CREATE INDEX trail_region_id_idx ON trails(region_id);

-- фотографии имеет смысл сортировать по паре image_type_id, item_id - поскольку чаще всего выборки будут именно так (все фотографии сектора скажем)
CREATE INDEX images_type_item_id_idx ON images(image_type_id, item_id);

-- маршруты будут искать для сектора, или для фото (к которому они принадлежат), ну и по имени возможно - в случае пользовательского поиска
CREATE INDEX route_name_idx ON routes(name);
CREATE INDEX route_sector_id_idx ON routes(sector_id);
CREATE INDEX route_image_id_idx ON routes(image_id);

-- индексировать категории по имени не будем. Во первых их там мало (40 в каждой системе категорирования) 
-- во вторых не представляю ситуации когда нужно было бы выбирать из этих таблиц по имени, поскольку везде у нас категории обезличены и хранятся в виде числа (id)

-- репорты. выборки будут явно "отчеты пользователя", и "отчеты для ... (id маршрута)" возможно еще и по датам добавим такие индексы
CREATE UNIQUE INDEX report_user_created_at_uq ON reports(user_id, created_at);
CREATE UNIQUE INDEX report_to_item_created_at_uq ON reports(item_id, created_at);

-- с медиа похожая ситуация
CREATE UNIQUE INDEX media_user_created_at_uq ON media(user_id, created_at);
CREATE UNIQUE INDEX media_to_item_created_at_uq ON media(item_id, created_at);

-- пролазы будут выбираться в отношении пользователя, или в отношении маршрута, возможно используя даты
CREATE UNIQUE INDEX climb_user_created_at_uq ON climbs(user_id, climbed_at);
CREATE INDEX climb_route_id_climbed_at_idx ON climbs(route_id, climbed_at); 	-- Тут потенциально возможна ситуация не уникальности (когда несколько скалолазов отметят прохождение маршрута в один и тот же день скажем 
																				-- просто технически - это не всегда происходит непосредственно в момент прохождения - возможно человек отмечает их вечером после тренировки и тп)

-- лайки тут примерно также, но имеет смысл еще включить в индекс тип лайка (когда речь идет о выборке по отношению к лайкнутой сущности)
CREATE UNIQUE INDEX likes_user_created_at_uq ON likes(user_id, created_at);
CREATE UNIQUE INDEX likes_user_item_created_at_uq ON likes(like_type_id, item_id, created_at);

-- сообщения - от пользователя, и для чата (учитывая дату)
CREATE UNIQUE INDEX messages_from_user_created_at_uq ON messages(from_user_id, created_at);
CREATE UNIQUE INDEX messages_to_chat_created_at_uq ON messages(to_chat_id, created_at);

-- чаты - по имени чата. Выборка чатов по создателю - не представляется частой задачей..
CREATE INDEX chat_name_idx ON chats(name);

-- членство юзеров в чатах. тут уже есть индекс позволяющий выбирать чаты по отношению к юзерам - можно добавить индекс для обратной выборки (юзеров чата)
CREATE UNIQUE INDEX chat_user_uq ON chats_users(chat_id, user_id);






