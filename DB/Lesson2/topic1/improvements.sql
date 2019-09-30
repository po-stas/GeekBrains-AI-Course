-- Возможные поправки к структуре данных, созданной во время вебинара.
-- Статус в таблице frensdhip предложил бы сделать на основе набора
-- заранее определенных значений, как c media_types в таблице media
-- так мы избежим проверок на предмет правильности статуса при 
-- заполнении таблицы. Ведь по сути статус - это конечный набор. 
-- (не очень правда представляю какие они там могут быть... 
-- виды дружбы - "крепкая", "мужская", "давняя", "с детского сада" :))

CREATE TABLE friendship (
  user_id INT UNSIGNED NOT NULL,
  friend_id INT UNSIGNED NOT NULL,
  status_id INT UNSIGNED NOT NULL,
  requested_at DATETIME DEFAULT NOW(),
  confirmed_at DATETIME,
  PRIMARY KEY (user_id, friend_id)
);

CREATE TABLE friendship_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL UNIQUE
);
