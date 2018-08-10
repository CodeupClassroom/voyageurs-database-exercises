CREATE DATABASE IF NOT EXISTS drinks_db;

USE drinks_db;

DROP TABLE IF EXISTS drinks;

CREATE TABLE drinks(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  abv DOUBLE NOT NULL,
  name VARCHAR(255) NOT NULL,
  glass_type VARCHAR(255),
  price DOUBLE NOT NULL,
  volume_in_oz INT UNSIGNED NOT NULL
);

INSERT INTO drinks(name, abv, volume_in_oz, price)
VALUES ('margarita', 0.4, 2, 16.99),
       ('jack and coke', 0.4, 2, 9.99),
       ('jager bomb', 0.35, 1, 8.99),
       ('jack and coke', 0.4, 2, 9.99),
       ('jager bomb', 0.35, 1, 8.99),
       ('shiner', 0.05, 20, 4.99),
       ('jager bomb', 0.35, 1, 8.99),
       ('four loko', 0.12, 24, 2.99);

SELECT * FROM drinks;

SELECT AVG(price) FROM drinks;

SELECT
  name,
  abv * volume_in_oz / (1.5 * 0.4) AS standard_drinks
FROM drinks;
