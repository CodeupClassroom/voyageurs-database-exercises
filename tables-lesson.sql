CREATE DATABASE IF NOT EXISTS tables_lesson_db;

-- migration: A program that creates a database structure

USE tables_lesson_db;

DROP TABLE IF EXISTS flights;

-- Create the flights table
CREATE TABLE flights(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  destination CHAR(3) NOT NULL,
  departs_from CHAR(3) NOT NULL,
  price FLOAT DEFAULT 0.0,
  num_tickets_sold INT UNSIGNED NOT NULL,
  gate_no VARCHAR(255) NOT NULL,
  description TEXT,
  departs_at DATETIME NOT NULL, -- '2018-08-10 14:05:55'
  arrives_at DATETIME NOT NULL,
  PRIMARY KEY(id)
);

-- SHOW TABLES;

-- DESCRIBE flights;

SHOW CREATE TABLE flights\G




