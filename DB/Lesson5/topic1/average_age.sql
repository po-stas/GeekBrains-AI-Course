-- Подсчитайте средний возраст пользователей в таблице users

SELECT FLOOR(AVG(DATE_FORMAT(NOW(),'%Y') - DATE_FORMAT(birthday,'%Y'))) AS average_age FROM users;
