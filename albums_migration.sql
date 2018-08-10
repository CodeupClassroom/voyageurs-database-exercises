CREATE DATABASE IF NOT EXISTS codeup_test_db;
USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  artist VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  release_date INT UNSIGNED NOT NULL,
  sales FLOAT,
  genre VARCHAR(255)
  -- PRIMARY KEY(id) -- instead, we'll add it to the column definition
);

DESCRIBE albums;