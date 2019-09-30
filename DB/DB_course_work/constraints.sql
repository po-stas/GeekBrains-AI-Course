-- Здесь определим ограничения для нашей базы

USE allclimb;

-- Cвязь профиля с пользователем (вообще пользователи не должны удаляться - поэтому констрейны будут RESTRICT в основном)
ALTER TABLE profiles
	ADD CONSTRAINT profiles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id);
		
-- Устройства пользователя также связаны с пользователем
ALTER TABLE user_devices
	ADD CONSTRAINT devices_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id);

-- Констрейн профиля с фото
ALTER TABLE profiles
	ADD CONSTRAINT profiles_avatar_id_fk
		FOREIGN KEY (avatar) REFERENCES media(id)
			ON DELETE SET NULL;
			
-- Констрейн стран (если страна использована в каком то регионе, то нельзя будет ее удалить из таблицы стран)
ALTER TABLE regions
	ADD CONSTRAINT regions_countries_id_fk
		FOREIGN KEY (country_id) REFERENCES countries(id);
		
-- районы к регионам (констрейн к таблице категорий мы реализовать не может поскольку этих таблиц много и будет использоваться какая-то выбранная)
ALTER TABLE spots
	ADD CONSTRAINT spots_regions_id_fk
		FOREIGN KEY (region_id) REFERENCES regions(id);
		
-- сектора к районам и к регионам
ALTER TABLE sectors
	ADD CONSTRAINT sector_regions_id_fk
		FOREIGN KEY (region_id) REFERENCES regions(id),
	ADD CONSTRAINT sector_spots_id_fk
		FOREIGN KEY (spot_id) REFERENCES spots(id);
		
-- загруженные сектора для устройства (при удалении сектора - запись о его загрузке удаляется также (ситуация возможная при реорганизации гайда скажем) или при удалении устройства из списка устройств пользователя (у нас такого механизма нет, но вдруг))
ALTER TABLE cached_sectors
	ADD CONSTRAINT cached_sector_id_fk
		FOREIGN KEY (sector_id) REFERENCES sectors(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT cached_device_id_fk
		FOREIGN KEY (device_id) REFERENCES user_devices(device_id)
			ON DELETE CASCADE;

-- знаки на карте. Констрейны к региону и району а также к типу значка
ALTER TABLE signs
	ADD CONSTRAINT sign_regions_id_fk
		FOREIGN KEY (region_id) REFERENCES regions(id),
	ADD CONSTRAINT sign_spots_id_fk
		FOREIGN KEY (spot_id) REFERENCES spots(id),
	ADD CONSTRAINT signs_types_id_fk
		FOREIGN KEY (sign_type_id) REFERENCES sign_types(id);
	
-- Тропы к регионам
ALTER TABLE trails
	ADD CONSTRAINT trails_regions_id_fk
		FOREIGN KEY (region_id) REFERENCES regions(id);

-- Images мы не можем законстрейнить напрямую, поскольку они могут относиться к разным сущностям, но можем сделать ограничение на тип изображения
ALTER TABLE images
	ADD CONSTRAINT image_types_id_fk
		FOREIGN KEY (image_type_id) REFERENCES image_types(id);
	
-- Маршруты - констрейним к сектору и к фото (в обоих случаях с каскадным удалением, поскольку если производится работа по редактированию гайдбука и удаляется фото или сектор - маршруты должны тоже быть удалены)
-- Также констрейним маршруты к типам маршрутов и к типам топов, для запрета удаления обоих типов.
ALTER TABLE routes
	ADD CONSTRAINT route_sector_id_fk
		FOREIGN KEY (sector_id) REFERENCES sectors(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT route_image_id_fk
		FOREIGN KEY (image_id) REFERENCES images(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT route_type_id_fk
		FOREIGN KEY (type_id) REFERENCES route_types(id),
	ADD CONSTRAINT route_top_type_id_fk
		FOREIGN KEY (top_type_id) REFERENCES top_types(id);		

-- отчеты (посты) констрейним к юзерам и к таблице типов отчетов
ALTER TABLE reports
	ADD CONSTRAINT report_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT report_type_id_fk
		FOREIGN KEY (report_type_id) REFERENCES report_types(id);
	
-- media. констрейны к юзеру, типу медиа и к типу принимающего инстанса
ALTER TABLE media
	ADD CONSTRAINT media_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT madia_type_id_fk
		FOREIGN KEY (media_type_id) REFERENCES media_types(id),
	ADD CONSTRAINT madia_item_id_fk
		FOREIGN KEY (item_type_id) REFERENCES media_item_types(id);
	
-- climbs. Пролазы. Констрейны к user, route, climb_type.. поскольку маршруты могут удаляться (админами) то пролазы видимо должны удаляться тоже
ALTER TABLE climbs
	ADD CONSTRAINT climb_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT climb_type_id_fk
		FOREIGN KEY (climb_type_id) REFERENCES climb_types(id),
	ADD CONSTRAINT climb_route_id_fk
		FOREIGN KEY (route_id) REFERENCES routes(id)
			ON DELETE CASCADE;
	
-- лайки, к юзерам и к типам лайков
ALTER TABLE likes
	ADD CONSTRAINT like_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT like_type_id_fk
		FOREIGN KEY (like_type_id) REFERENCES like_types(id);
	
-- сообщения, к юзерам, к статусам сообщений и к чатам
ALTER TABLE messages
	ADD CONSTRAINT message_from_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users(id),
	ADD CONSTRAINT message_status_id_fk
		FOREIGN KEY (status_id) REFERENCES message_statuses(id),
	ADD CONSTRAINT message_chat_id_fk
		FOREIGN KEY (to_chat_id) REFERENCES chats(id);

-- чаты констрейн к юзерам (создатель чата)
ALTER TABLE chats
	ADD CONSTRAINT chat_creator_id_fk
		FOREIGN KEY (creator_id) REFERENCES users(id);
	
-- таблица вхождений юзеров в чаты, удаляется в любом случае - если чат удалился или если юзер удалился (хоть такое и врядли случится)
ALTER TABLE chats_users
	ADD CONSTRAINT chats_users_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
	ADD CONSTRAINT chats_users_chat_id_fk
		FOREIGN KEY (chat_id) REFERENCES chats(id)
			ON DELETE CASCADE;
		
-- Схема приложена в скриншоте ERDiagram.png

