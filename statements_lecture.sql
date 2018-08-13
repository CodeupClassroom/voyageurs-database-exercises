-- RUN FILE mysql -u USERNAME -p -t < filename.sql
-- ================================= UPDATE STATEMENTS (UPDATE)
-- create books database (if it doesn't exit)
  CREATE DATABASE IF NOT EXISTS books_db;
  USE books_db;

-- create books migration (table)
  -- The table books should have the following columns...
    -- id 
    -- title
    -- author
    -- date_published
    -- description
    -- bestseller_weeks

  USE books_db;

  DROP TABLE IF EXISTS books;

  CREATE TABLE IF NOT EXISTS books  (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50) NOT NULL DEFAULT 'Unknown',
    date_published DATE NOT NULL,
    description TEXT,
    bestseller_weeks INT NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
  );

-- Create books seeder file

  TRUNCATE books;

  INSERT INTO books (title, author, date_published, description, bestseller_weeks)
  VALUES 
  ("To Kill a Mockingbird", "Harper Lee", "1960-07-11", "This is a book about birds.", 0),
  ("The Great Gatsby", "F. Scott Fitzgerald", "1925-04-10", "This is a book about a great thing.", 10),
  ("Harry Potter and the Sorcerer`s Stone", "J.K. Rowling", "1997-06-26", "This is a book about wizards.", 70),
  ("The Hobbit", "J.R.R. Tolkien", "1937-07-21", "This is a book about hobbits.", 5);

-- Update values **Test alterations first with SELECT statements** 
-- Updating a single record 
-- (a record with an ID of 2 should have an author of 'bob')

  SELECT * FROM books
  WHERE id = 2;

  UPDATE books
  SET author = 'bob'
  WHERE id = 2;

-- Update single record multiple columns 
-- (change author to 'Steve' and title to 'The Facts of Life' for the record with id of 1)

  SELECT * FROM books
  WHERE id = 1\G

  UPDATE books
  SET author = 'Steve', title = 'The Facts of Life'
  WHERE id = 1\G

-- Update single value in multiple records
-- (for all records with an id greater than 3, change the author to 'George')

  SELECT * FROM books
  WHERE id < 3\G

  UPDATE books
  SET author = 'George'
  WHERE id < 3\G

-- Leaving off Where Clause (DANGEROUS!!!)

  UPDATE books
  SET author = 'George';

-- ================================= DELETE STATEMENTS

-- Delete values  **Test deletes first with SELECT statements** 
-- 1) Always write your WHERE condition first.
-- 2) Whenever possible, DELETE using the table's primary key.
-- (delete record with an id of 4)

  USE test_db;
  SELECT * FROM books;
  SELECT * FROM books;
  DELETE FROM books
  WHERE id = 4;