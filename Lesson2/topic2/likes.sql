-- Реализация лайков для messages, media и user-ов.
-- Поначалу собирался делать лайки единой таблицей с полями для связи с разными сущностями типа for_message_id, for_media_id, for_user_id...
-- Именно так у меня подобный функционал реализован в рабочем проекте... Но подумав, решил сделать их все-таки разными таблицами.
-- Причиной стало несколько вещей: из трех полей for_ два будут всегда NULL, второй, более важный, как мне кажется, момент - отсутствие нормального 
-- индекса в когда у нас есть уникальные таблицы для каждой сущности мы можем сделать составной ключ по id юзера, id сущности и таким образом
-- у нас появляется индекс, позволяющий однозначно на уровне ДБ реализовывать однократность лайка (ведь пользователь может только один раз
-- лайкнуть одну вещь).. Ну и еще один момент - разные таблицы будут эффективнее в работе, чем большая единая. Ведь в таких сетях как ВК
-- лайков гораздо больше чем пользователей - соответственно мне кажется разделить их на несколько частей - хорошее решение.

-- Статус лайка может понадобиться - по аналогии с тем, что применяется в facebook, где лайк может 
-- быть нескольких различных типов.

-- Таблица лайков
CREATE TABLE likes_users (
  user_id INT UNSIGNED NOT NULL,
  for_user_id INT UNSIGNED NOT NULL,
  status_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT NOW(),
  PRIMARY KEY (for_user_id, user_id)
);

CREATE TABLE likes_messages (
  user_id INT UNSIGNED NOT NULL,
  for_message_id INT UNSIGNED NOT NULL,
  status_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT NOW(),
  PRIMARY KEY (for_message_id, user_id)
);

CREATE TABLE likes_media (
  user_id INT UNSIGNED NOT NULL,
  for_media_id INT UNSIGNED NOT NULL,
  status_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT NOW(),
  PRIMARY KEY (for_media_id, user_id)
);

CREATE TABLE like_statuses (
  id SERIAL,
  description VARCHAR(50) NOT NULL UNIQUE
);
