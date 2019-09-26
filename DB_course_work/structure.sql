-- Структура базы AllClimb (сервис путеводителя по скалолазным маршрутам. Учебная версия)
-- структура таблиц:
-- 1. users
-- 2. users_profiles
-- 3. user_device 
-- (поскольку сервис рассчитан в большей степени на мобильных пользователей 
-- - предполагается, что у каждого пользователя может быть больше чем одно устройство,
-- и на каждом устройстве может быть загружен свой контент (путеводители по разным районам)
-- соответственно при запросе обновлений - каждому устройству нужен свой контент.
-- 
-- 4. cached_sectors (загруженные на каком либо устройстве сектора. относится к user_device и к sectors см. далее)
-- 
-- Таблицы для территориального дробления
-- 
-- 5. regions (большая скалолазная область - например полуостров Крым, или остров Сардиния, или Красноярский край и тп..)
-- (В этой таблице хранятся координаты и примерные размеры области а также общая информация, сезонность лазания и тп..)
-- 
-- 6. areas (район внутри скалолазной области - обычно это отдельный скальный массив например скала "Красный Камень" в Крыму...)
-- (Также - координаты, описание, общая сводные данные по сложностям маршрутов..)
-- 
-- 7. sectors (скальный район в тридиционных бумажных путеводителях делится на сектора - это участок стены логически отделенный от остальных)
-- (для секторов также хранятся координаты, ориентация относительно солнца (для выбора наиболее комфортного времени тренировок, сводная информация по сложности маршрутов, + логистика - как его найти, время подхода итп.)
-- 
-- Специфичная именно для скалолазного путеводителя часть
-- 
-- 8. images (фотографии скалы - относятся к секторам. В секторе может быть от 1 до +- бесконечного количества фотографий фрагментов скальной стены)
-- 
-- 9. routes (маршруты принадлежан к фотографиям - собственно то, для чего путеводитель и нужен, маршруты хранятся в виде линий, которые отображаются поверх фотографий и могут быть выбраны пользователем. В каждом маршруте помимо линии хранится куча информации: сложность, протяженность, количество точек страховки, автор, год создания и тп..)
-- 
-- 10. signs (различные топографические значки на карту. принадлежат к району. Это могут быть: источник питьевой воды, парковка, место под палаточную стоянку, магазин и тп..)
-- 
-- 11. trails (тропы до секторов. Линии на карте - принадлежат к региону. В таблице должны храниться наборы координат точек для построения линии тропы, а также сопутствующая информация, протяженность, время на прохождение и тп.)
-- 
-- Социальная часть  
-- 
-- 
-- 12. reports (отчеты (комментарии) пользователей - могут относиться к маршрутам, секторам, районам а также быть новостями, к пролазам см. далее)
-- 
-- 13. pictures (фото в отчеты)
-- 
-- 14. videos (видео в отчеты)
-- 
-- 15. climbs (пролазы - отметки о прохождении тем или иным пользователем того или иного маршрута)
-- 
-- 16. likes (лайки пользователей - могут относиться ко всему :)) к отчетам, к пролазам, к фото и видео, к новостям, к маршрутам, к секторам и районам.
-- 
-- 17. messages (мгновенные сообщения между пользователями)
-- 
-- 18. chats (а также - если реализовывать многопользовательские сообщения - то эта таблица, по аналогии с группами и тогда уже таблица связей chats_users)


DROP DATABASE IF EXISTS allclimb;
CREATE DATABASE allclimb;

USE allclimb;

-- Изначально модель сервиса предполагает опциональную регистрацию. Тоесть допустимы клиенты пользующиеся сервисом анонимно
-- Смотрят гайдбуки, пользуются навигацией и не участвуют в социальной части. (Таких в реальном нашем сервисе больше половины)
-- Для анонимных пользователей хранится только id генерируемый автоматически в процессе регистрации. Профиля у них нет.

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL,
	name VARCHAR(100), 						-- Это скорее никнейм (обиходное имя для пользователя)
	fullname VARCHAR(200), 					-- Пользователь может и не заполнить поле полного имени
	created_at DATETIME DEFAULT NOW(),
  	updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
) COMMENT="Пользователи системы";

-- Каждому пользователю может принадлежать одно или более мобильных устройств (или не принадлежать - если он пользуется только сайтом)
-- К устройствам привязаны загрузки контента (в случае обновления - на каждом устройстве пользователя требуется разный набор контента)
-- К устройствам привязана служба сообщений (сообщения приходят на конкретные телефоны или планшеты - как правило на все устройства конкретного пользователя) 

DROP TABLE IF EXISTS user_devices;
CREATE TABLE user_devices (
  device_id VARCHAR(64) NOT NULL UNIQUE,	-- уникальный идентификатор мобильного устройства (обычно это строка из букв, цифр и символов типа - _ итп)
  user_id BIGINT UNSIGNED NOT NULL,			-- id пользователя, чье устройство
  os VARCHAR(64),							-- Операционка устройства
  os_version VARCHAR(32),					-- Версия OS
  screen_x_size SMALLINT UNSIGNED,			-- разрешение экрана (нужно для выбора фоток соответствующего разрешения (в базе хранятся фото в нескольких разрешениях))
  screen_y_size SMALLINT UNSIGNED,
  created_at DATETIME DEFAULT NOW(),		-- это скорее для статистики - когда пользователь подключил какое-то из своих устройств к сервису (updated - не отслеживаем)
  fcm_token VARCHAR(256),					-- Токен для системы пуш сообщений (FireBase Cloud Messaging у нас используется) - он привязан именно к устройству у FireBase
  PRIMARY KEY (device_id)
) COMMENT="Устройства пользователей";

-- Профили, дополнительная информация о не-анонимных пользователях. Все добровольно - все поля могут быть NULL 

DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
  user_id SERIAL,
  sex CHAR(1),
  email VARCHAR(100) UNIQUE,
  birthday DATE,
  city VARCHAR(100),
  avatar BIGINT UNSIGNED,						-- id фотографии из photos
  admin BOOLEAN NOT NULL DEFAULT FALSE		-- Для определения прав пользователя в системе
) COMMENT="Профили зарегистрированных пользователей";

-- Далее - сам гайдбук
-- Регионы

DROP TABLE IF EXISTS regions;
CREATE TABLE regions (
  id SERIAL,
  name VARCHAR(100) NOT NULL,
  country_id TINYINT UNSIGNED NOT NULL,				-- на сентябрь 2019 года зарегистрировано 193 государства члена ООН - думаю 256 значенией хватит для этого поля в будущем
  season_start TINYINT UNSIGNED NOT NULL,			-- сезон комфортного лазания (месяцы)
  season_end TINYINT UNSIGNED NOT NULL,
  lat REAL NOT NULL,								-- Координаты маркера региона на карте (в системе десятичных дробей Google)
  lng REAL NOT NULL,
  map_lat REAL NOT NULL,							-- Координаты центра карты при выборе региона - при выборе региона карта необязательно должна центрироваться на маркере - вот этот центр отображения тут и хранится
  map_lng REAL NOT NULL,
  zoom REAL NOT NULL, 								-- масштаб карты при выборе региона
  published BOOLEAN NOT NULL,						-- Флаг видимости, пока регион находится в работе его не должно быть видно всем пользователям, только админам
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW(),
  created_by INT UNSIGNED NOT NULL,					-- id админа создавшего
  updated_by INT UNSIGNED NOT NULL,					-- id админа редактировавшего
  info TEXT,										-- описание региона
  short_info TINYTEXT,								-- короткое описание, для списков
  rating REAL NOT NULL DEFAULT 0.0					-- некоторая денормализация - нужно чтобы не гонять каждый раз запрос всех лайков всему, что находится в этом регионе		
) COMMENT="Регионы";

DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
  id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
  PRIMARY KEY (id),
  name VARCHAR(100) NOT NULL UNIQUE					-- текстовое название страны
) COMMENT="Названия стран";


-- Скальные районы

DROP TABLE IF EXISTS spots;
CREATE TABLE spots (
  id SERIAL,
  region_id BIGINT UNSIGNED NOT NULL,					-- id региона к которому принадлежит район
  name VARCHAR(100) NOT NULL,
  min_grade TINYINT UNSIGNED NOT NULL,					-- разброс по категориям маршрутов (мин-макс)
  max_grade TINYINT UNSIGNED NOT NULL,
  lat REAL NOT NULL,								
  lng REAL NOT NULL,
  map_lat REAL NOT NULL,							
  map_lng REAL NOT NULL,
  zoom REAL NOT NULL, 								
  published BOOLEAN NOT NULL,						
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW(),
  created_by INT UNSIGNED NOT NULL,					
  updated_by INT UNSIGNED NOT NULL,					
  info TEXT,										
  short_info TINYTEXT,								
  rating REAL NOT NULL DEFAULT 0.0					
) COMMENT="Районы";

-- Сектора района

DROP TABLE IF EXISTS sectors;
CREATE TABLE sectors (
  id SERIAL,
  region_id BIGINT UNSIGNED NOT NULL,
  spot_id BIGINT UNSIGNED NOT NULL,
  name VARCHAR(100) NOT NULL,
  sun_time TINYINT UNSIGNED NOT NULL,				-- когда в секторе солнце (это важно бывает для лазания) утром, днем, вечером, никогда
  slopes TINYINT UNSIGNED NOT NULL,					-- уклон стен сектора (нависание, вертикаль, положилово) кодированное значение определяющее все возможные комбинации
  approach_time TINYINT UNSIGNED NOT NULL,			-- примерное время подхода к сектору (от остановки/парковки и тп)
  grades1 TINYINT UNSIGNED NOT NULL,				-- Сколько маршрутов определенной категории есть в секторе
  grades2 TINYINT UNSIGNED NOT NULL,				-- Это некоторая денормализация, но каждый раз считать накладно
  grades3 TINYINT UNSIGNED NOT NULL,				-- весь диапазон трудностей разбит на 5 частей (всего шкала трудностей состоит из 40 позиций)
  grades4 TINYINT UNSIGNED NOT NULL,				-- для каждой из этих частей тут хранятся количества маршрутов в данном секторе
  grades5 TINYINT UNSIGNED NOT NULL,				-- в итоге при запросе секторов можно быстро построить диаграммки из 5 столбиков - каких категорий сколько в секторе
  													-- рассчитываем эту статистику мы процедурой по cron-у, чтобы не задерживать процесс редактирования маршрутов у админов
  													-- которые часто заполняют целые новые сектора из 30-100 маршрутов, и ждать пару лишних секунд при сохранении каждой новой 
  													-- линии - неприятно (возможно это еще связано с допотопными запросами для подсчета - надо бы их пересмотреть там :))
  lat REAL NOT NULL,								
  lng REAL NOT NULL,
  map_lat REAL NOT NULL,							
  map_lng REAL NOT NULL,
  zoom REAL NOT NULL, 								
  published BOOLEAN NOT NULL,						
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW(),
  created_by INT UNSIGNED NOT NULL,					
  updated_by INT UNSIGNED NOT NULL,					
  info TEXT,										
  short_info TINYTEXT,								
  rating REAL NOT NULL DEFAULT 0.0,						
  cache_size1 INT NOT NULL,							-- сколько нужно места чтобы скачать сектор на устройстве с самым мелким экраном (суммарный объем для фоток скал)
  cache_size2 INT NOT NULL,							-- для средних экранов и так далее...
  cache_size3 INT NOT NULL,							-- это конечно денормализация, но вот эти данные так быстро не поднимешь - их на триггерном уровне при наполнении региона фотографиями
  cache_size4 INT NOT NULL							-- формировать лучше, при добавлении или удалении каждой новой фотографии.
  													-- далее эти значения аггрегируются в районах и регионе, для тех, кто хочет скачать целиком регион скажем
) COMMENT="Сектора";

-- таблица в которой будет храниться - какие сектора на каком устройстве скачаны (чтобы выдавать апдейты того контента который у пользователя есть)

DROP TABLE IF EXISTS cached_sectors;
CREATE TABLE cached_sectors (
  device_id VARCHAR(64) NOT NULL,					
  sector_id BIGINT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT NOW(),				-- так, для статистики
  PRIMARY KEY (device_id, sector_id)				-- на практике запрос - какие сектора загружены на данном устройстве более частый (во время каждого дневного обновления), чем запрос на каких устройствах загружен этот сектор (гипотетически нужен для статистики)
 ) COMMENT="Скачанные на устройстве сектора";

-- Различные значки на карте (парковка, места под палатку, источник воды и тп)

DROP TABLE IF EXISTS signs;
CREATE TABLE signs (
  id SERIAL,
  region_id BIGINT UNSIGNED NOT NULL,
  spot_id BIGINT UNSIGNED NOT NULL,
  name VARCHAR(100),								-- у большинства значков нет имени (парковки, места под палатку и тп)   
  sign_type_id TINYINT UNSIGNED NOT NULL,			-- ссылка на тип значка
  metadata JSON,									-- у значков может быть довольно разнообразная информация, телефон - email - адрес сайта, скажем для кемпинга или другого жилья, какая-то сопутствующее описание для парковки или палаточной стоянки
  lat REAL NOT NULL,								-- карта при нажатии на значок не перепозиционируется, поэтому полей maplat maplng и zoom нет
  lng REAL NOT NULL,					
  published BOOLEAN NOT NULL,						
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW(),
  created_by INT UNSIGNED NOT NULL,					
  updated_by INT UNSIGNED NOT NULL													
) COMMENT="Знаки";

DROP TABLE IF EXISTS sign_types;
CREATE TABLE sign_types (
  id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
  PRIMARY KEY (id),
  name VARCHAR(100) NOT NULL UNIQUE					-- текстовое имя типа знака 
) COMMENT="Типы знаков";

-- тропы на карте (линии, нарисованные вручную или записанные мобильным устройством администратора на местности при помощи GPS)

DROP TABLE IF EXISTS trails;
CREATE TABLE trails (
  id SERIAL,
  region_id BIGINT UNSIGNED NOT NULL,				-- принадлежат ко всему региону в целом
  name VARCHAR(100),								-- впринципе необязательно - используется для администрирования в базе
  trail_spline BLOB,								-- координаты тропы на карте (на уровне приложения в бинарный вид кодируются десятичные Google широта и долгота и эти пары друг за другом пишутся в BLOB)
  													-- одна тропа может состоять из довольно большого количества таких точек. Но в масштабах базы данных это все-таки довольно немного (десятки килобайт)
  													-- поэтому считаю не накладно хранить их в базе (индексировать и искать по этому полю все равно точно ничего никогда не понадобится)
  
  trail_length MEDIUMINT UNSIGNED, 					-- подход к сектору длиннее 65км врядли будет позитивно встречен скалолазами :)
  trail_time TINYINT UNSIGNED,						-- время требуемое на прохождение тропы (опять-же больше часа-двух скалолазы обычно не готовы тратить на подход, еще же тренироваться потом :)
  dangerous BOOLEAN NOT NULL,						-- обозначение опасных троп (для прохождения которых требуется скалоалзное снаряжение)
  published BOOLEAN NOT NULL,
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW(),
  created_by INT UNSIGNED NOT NULL,					
  updated_by INT UNSIGNED NOT NULL													
) COMMENT="Тропы";

-- images - фотографии. Это фото именно для гайдбука, они могут использоваться в секторах, а также как заявочные для региона или района
-- но не могут быть скажем аватаром пользователя, поскольку эти фото имеют механизм хранения нескольких разрешений, для выдачи на 
-- устройства с разными размерами экрана. Для аватаров и социальных вещей этот механизм у нас не используется

DROP TABLE IF EXISTS images;
CREATE TABLE images (
  id SERIAL,
  item_id BIGINT UNSIGNED NOT NULL,					-- id инстанса, которому принадлежит фото. 
  image_type_id TINYINT UNSIGNED NOT NULL,			-- id типа фото
  path1 VARCHAR(255),								-- путь до фото в первом разрешении
  path2 VARCHAR(255),								-- ну и так далее
  path3 VARCHAR(255),								
  path4 VARCHAR(255),
  `order` TINYINT UNSIGNED,							-- если это фото для сектора, нужно задавать порядковый номер его в секторе (фотографий в секторе обычно от 1 до 5-6.. дальше уже надо разбивать сектор - иначе листать долго)
  published BOOLEAN NOT NULL,
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW(),
  created_by INT UNSIGNED NOT NULL,					
  updated_by INT UNSIGNED NOT NULL													
) COMMENT="Фотографии скал";

DROP TABLE IF EXISTS image_types;
CREATE TABLE image_types (
  id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
  PRIMARY KEY (id),
  name VARCHAR(100) NOT NULL UNIQUE					-- текстовое имя типа для фотографии (фотография для сектора, фотография для района и тп) 
) COMMENT="Типы фотографий";

-- Routes. Скалолазные маршруты. Это то ради чего весь гайдбук и существует. Технически - это линии (сплайны) на фото, 
-- плюс всяческая сопутствующая информация

DROP TABLE IF EXISTS routes;
CREATE TABLE routes (
  id SERIAL,
  sector_id BIGINT UNSIGNED NOT NULL,				-- id сектора в котором маршрут. 
  image_id BIGINT UNSIGNED NOT NULL,				-- id фото, на котором маршрут (Это первично, и впринципе этого бы хватило - но запрашивать маршруты по сектору тоже очень часто приходится). 
  name VARCHAR(255) NOT NULL,								
  type_id TINYINT UNSIGNED NOT NULL,				-- id типа маршрута, (они в скалолазании бывают разные - ну вобщем это скалолазные штуки)
  `length` MEDIUMINT UNSIGNED,						-- среднестатистические скалолазные маршруты редко бывают длиннее 30 метров, но случаются отклонения, в Йосемити на Эль Капитан есть маршруты длиннее 600 метров - это в TINYINT уже не влезет :)
  													-- в Крыму на гору Шаан-кая - есть линии длиннее 250 метров. Вобщем лучше перестраховаться.
  bolts TINYINT UNSIGNED,							-- Стационарных точек страховки на маршруте (если это спортивный маршрут)
  top_type_id TINYINT UNSIGNED, 					-- id типа верхней станции (если известно)
  sit_start BOOLEAN,								-- Старт сидя или нет (для болдеринговых маршрутов) - сильно разреженное поле получится - но, что делать
  pitches TINYINT UNSIGNED,							-- Если это мульти-питч (маршрут состоящий из нескольких стандартных скалолазных маршрутов) - то сколько питчей в нем
  grade_id TINYINT UNSIGNED,						-- категория (трудность маршрута) существует множество систем категорирования - поэтому мы храним абстрактное числовое значение - ссылку на ту или иную таблицу системы категорирования см. дальше, 
  													-- может быть NULL, тогда маршрут считается "проектом" - тоесть еще не пройден/не откатегорирован			
  sec_grade_id TINYINT UNSIGNED,					-- вторая категория.. скалолазы любят неопределенность :) и часто категорируют маршруты через дробь.. типа 7a+/7b			
  spline BLOB,										-- то-же что и в тропах, но несколько меньше по размерам (этот сплайн ограничен фото - на котором он нарисован, слишком длинным быть не может)
  													-- бывают в нашей системе маршруты без линий.. просто для списка (скажем не входят на имеющееся фото)
  author VARCHAR(255),								-- имя автора маршрута - того, кто его придумал и организовал на скале (это необязательно пользователь сервиса) поэтому просто текстом. Может быть неизвестен
  creation_date DATETIME,							-- Когда был создан маршрут в секторе (может быть неизвестно)
  `order` SMALLINT UNSIGNED,						-- значение по которому определяется порядковый номер в секторе слева направо, выводится из усредненной X-координаты точек сплайна в момент создания или редактирования
  published BOOLEAN NOT NULL,
  info TEXT,
  created_at DATETIME DEFAULT NOW(),				-- это относится ко времени заливки в базу
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW(),
  created_by INT UNSIGNED NOT NULL,					
  updated_by INT UNSIGNED NOT NULL													
) COMMENT="Маршруты";

DROP TABLE IF EXISTS route_types;
CREATE TABLE route_types (
  id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
  PRIMARY KEY (id),
  name VARCHAR(100) NOT NULL UNIQUE					-- текстовое имя типа маршрута ("спорт", "болдер", "трад", "мультипитч" и тп)
) COMMENT="Типы маршрутов";

DROP TABLE IF EXISTS top_types;
CREATE TABLE top_types (
  id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
  PRIMARY KEY (id),
  name VARCHAR(100) NOT NULL UNIQUE					-- текстовое имя типа верхней станции ("кольцо", "карабин", "цепь", "крюк" и тп)
) COMMENT="Типы топов";

-- систем категорирования скалолазных маршрутов в мире довольно много, в разных странах популярны разные, поэтому в сервисе можем реализовать
-- некоторые наиболее популярные, для тех районов в которых у нас есть информация. 
-- Все эти системы имеют некое соответствие - тоесть категорию из одной системы можно выразить в другой системе. В маршрутах у нас хранится лишь абстрактный id категории
-- который в разных системах категорирования должен указывать на соответствующее название категории (скажем id 21 во "французской" системе будет "6a+", а в европейской UIAA будет "VII-", в то время как в Американской YDS это будет "5.11с")
-- У нас будут созданы таблицы для тех систем категорирования, которые мы хотим реализовать - и в каждой из них соответствующему id будет сопоставлено правильное имя
-- Таким образом если пользователь на уровне приложения переключится в подходящую ему систему - мы просто начнем выдавать имена категорий маршрутов из выбранной им таблицы категорий

-- В России тридиционно популярна "французская система"
DROP TABLE IF EXISTS french_grades;
CREATE TABLE french_grades (
  id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
  PRIMARY KEY (id),
  name VARCHAR(100) NOT NULL UNIQUE					-- текстовое имя категории ("6а", "6а+", "7b", "8c+" и тд)
) COMMENT="Французская система категорирования";

-- Европейцы (немцы в основном) часто используют систему UIAA (United International Alpinist Association)
DROP TABLE IF EXISTS uiaa_grades;
CREATE TABLE uiaa_grades (
  id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
  PRIMARY KEY (id),
  name VARCHAR(100) NOT NULL UNIQUE					-- текстовое имя категории ("VII-", "X+" и тд)
) COMMENT="система категорирования UIAA";

-- Американцы не понимают ничего кроме системы YDS (Yosemiti Decimal System)
DROP TABLE IF EXISTS yds_grades;
CREATE TABLE yds_grades (
  id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
  PRIMARY KEY (id),
  name VARCHAR(100) NOT NULL UNIQUE					-- текстовое имя категории ("5.11c", "6.10a" и тд)
) COMMENT="система категорирования YDS";

-- При этом болдеринговые маршруты они измеряют в другой системе (Hueco) :))
DROP TABLE IF EXISTS hueco_grades;
CREATE TABLE hueco_grades (
  id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
  PRIMARY KEY (id),
  name VARCHAR(100) NOT NULL UNIQUE					-- текстовое имя категории ("V0+", "V4" и тд)
) COMMENT="система категорирования Hueco";

-- Вобщем здесь мы на этом думаю остановимся, у нас в сервисе их реализовано побольше...

-- На этом гайдбучная часть таблиц закончена, переходим к социальной

-- Отчеты или комментарии (к маршрутам, секторам, и тп)

DROP TABLE IF EXISTS reports;
CREATE TABLE reports (
  id SERIAL,
  user_id BIGINT UNSIGNED NOT NULL,	
  report_type_id TINYINT UNSIGNED NOT NULL,			-- id типа отчета 
  item_id BIGINT UNSIGNED NOT NULL, 				-- id сущности (к которой он написан)
  `text` VARCHAR(512),								-- текст отчета (может отсутствовать - если допустим к отчету прикреплены фото или видео)
  created_at DATETIME DEFAULT NOW(),				
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()-- если реализовывать функционал редактирования отчетов после публикации
) COMMENT="Отчеты пользователей";

DROP TABLE IF EXISTS report_types;
CREATE TABLE report_types (
  id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
  PRIMARY KEY (id),
  name VARCHAR(100) NOT NULL UNIQUE					-- текстовое имя типа отчета (к чему отчет - к маршруту, к сектору, к району и тд)
) COMMENT="Типы отчетов";

-- Медиа пользователей (намеренно отделены от фотографий гайда - так как фотографии хранятся в нескольких разных разрешениях, а картинки пользователей - как есть)

DROP TABLE IF EXISTS media;
CREATE TABLE media (
  id SERIAL,
  user_id BIGINT UNSIGNED NOT NULL,	
  media_type_id TINYINT UNSIGNED NOT NULL,			-- id типа медиа
  item_id BIGINT UNSIGNED, 							-- в нашем сервисе, медиа не существует само по себе, оно постится в отчетах или в сообщениях, исключения составляют аватары (поэтому это поле получается немного разреженным)
  item_type_id TINYINT UNSIGNED NOT NULL,			-- ссылка на тип сущности которой принадлежит это media
  `path` VARCHAR(256),
  `size` INT UNSIGNED NOT NULL,
  metadata JSON,									-- мало-ли что там может быть.. Может быть ссылка например по которой надо переходить при нажатии на фото или видео
  created_at DATETIME DEFAULT NOW(),				
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
) COMMENT="Медиа пользователей";

DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types (
  id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
  PRIMARY KEY (id),
  name VARCHAR(100) NOT NULL UNIQUE					-- текстовое имя типа медиа (фото, видео, аудио...)
) COMMENT="Типы медиа";

DROP TABLE IF EXISTS media_item_types;
CREATE TABLE media_item_types (
  id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
  PRIMARY KEY (id),
  name VARCHAR(100) NOT NULL UNIQUE					-- текстовое имя типа сущности к которой принадлежит медиа (репорт, сообщение...)
) COMMENT="Типы сущностей которым принадлежит медиа";

-- Пролазы (отметки о прохождении пользователем того или иного маршрута) это важная часть сервиса. Многие пользуются нами, как хранилищем своих достижений
-- К тому-же это богатое поле для всякого рода социальных тем - рейтинги скалолазов, статистика личного прогресса и тп..

DROP TABLE IF EXISTS climbs;
CREATE TABLE climbs (
  id SERIAL,
  user_id BIGINT UNSIGNED NOT NULL,	
  route_id BIGINT UNSIGNED NOT NULL,				-- id маршрута прохождение которого осуществлено
  climb_type_id TINYINT UNSIGNED NOT NULL,			-- id типа пролаза (они делятся на несколько типов - да)
  climbed_at DATETIME NOT NULL,						-- Дата собственно пролаза (может отличаться от даты добавления в базу)
  created_at DATETIME DEFAULT NOW(),				
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
) COMMENT="Пролазы пользователей";

DROP TABLE IF EXISTS climb_types;
CREATE TABLE climb_types (
  id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
  PRIMARY KEY (id),
  name VARCHAR(100) NOT NULL UNIQUE					-- текстовое имя типа пролаза (в спортивном скалолазании это может быть onsight - прохождение с первой попытки (самый ценный вариант), 
  													-- flash - прохождение с первой попытки после ознакомления с описанием "расклада" прохождения , redpoint - прохождение не с первой попытки,
  													-- try (или tick) - попытка - попытка прохождения закончившаяся неудачей (нагрузил страховочную веревку в процессе прохождения - в скалолазной терминологии - "завис"))
) COMMENT="Типы пролазов";

-- Лайки (пролазам, маршрутам, секторам и тп)

DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL,
	item_id BIGINT UNSIGNED NOT NULL,
	like_type_id TINYINT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT NOW()
) COMMENT="Лайки";

DROP TABLE IF EXISTS like_types;
CREATE TABLE like_types (
	id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
  	PRIMARY KEY (id),
	name VARCHAR(255) NOT NULL UNIQUE
) COMMENT="Типы лайков";

-- Сообщения (зарегистрированные пользователи могут отправлять друг-другу)

DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
	id SERIAL,
	from_user_id BIGINT UNSIGNED NOT NULL,
	to_chat_id BIGINT UNSIGNED NOT NULL,			-- сообщения адресованы чатам а не индивидуальным пользователям (каждая беседа - между двумя или более участниками происходит в соотв. чате)
	`text` VARCHAR(512),
	created_at DATETIME DEFAULT NOW(),				-- эт поле также используется для доставки (поскольку у пользователя может быть сразу несколько точек доставки, информация о том какие сообщения доставлены хранится на устройствах - дата последнего доставленного)
	updated_at DATETIME DEFAULT NOW() ON UPDATE NOW(),
	status_id TINYINT UNSIGNED NOT NULL				-- id статуса сообщения 
) COMMENT="Сообщения пользователей";

DROP TABLE IF EXISTS message_statuses;
CREATE TABLE message_statuses (
	id TINYINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
  	PRIMARY KEY (id),
	name VARCHAR(255) NOT NULL UNIQUE				-- имя статуса сообщения, доставлено, прочитано, удалено, отредактировано и тп.. (доставленно - в данном случае определяет вид индикации у написавшего пользователя - а не служит для проверки доставки адресату)
) COMMENT="Статусы сообщений";

-- Чаты (все беседы происходят в чатах, чаты бывают на два пользователя, на группы, а также служебные - принадлежащие скальным районам - для широковещательного общения)

DROP TABLE IF EXISTS chats;
CREATE TABLE chats (
	id SERIAL,
	name VARCHAR(255) NOT NULL,						-- имя чата
	creator_id BIGINT UNSIGNED NOT NULL,			-- кто инициировал чат (он становится админом - может удалять его, или удалять пользователей из него и тп)
	public BOOLEAN NOT NULL,						-- Публичный ли чат (или частный) публичный(служебный) не имеет админа и не может быть удален пользователями
	active BOOLEAN NOT NULL DEFAULT TRUE,			-- помечать удаленные чаты
	avatar BIGINT UNSIGNED,							-- ссылка в таблицу media, если аватар не задан - используется фото заглушка
	created_at DATETIME DEFAULT NOW(),				
	updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() -- используется для обновления параметров чата у участников когда поменялось имя, аватар или еще что-то
) COMMENT="Чаты";

DROP TABLE IF EXISTS chats_users;
CREATE TABLE chats_users (
	chat_id BIGINT UNSIGNED NOT NULL,
	user_id BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY (user_id, chat_id)
) COMMENT="Принадлежность пользователей к чатам";

-- На этом пока всё. 

-- SHOW TABLES;

/*Tables_in_allclimb|
------------------|
cached_sectors    |
chats             |
chats_users       |
climb_types       |
climbs            |
french_grades     |
hueco_grades      |
image_types       |
images            |
like_types        |
likes             |
media             |
media_item_types  |
media_types       |
message_statuses  |
messages          |
profiles          |
regions           |
report_types      |
reports           |
route_types       |
routes            |
sectors           |
sign_types        |
signs             |
spots             |
top_types         |
trails            |
uiaa_grades       |
user_devices      |
users             |
yds_grades        |*/