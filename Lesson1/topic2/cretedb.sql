CREATE DATABASE IF NOT EXISTS example;
USE example;
CREATE TABLE IF NOT EXISTS users ( 
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);


