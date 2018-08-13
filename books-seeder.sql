USE books_db;

TRUNCATE books;

INSERT INTO books (title, author, date_published, description, bestseller_weeks)
VALUES
("To Kill a Mockingbird", "Harper Lee", "1960-07-11", "This is a book about birds.", 0),
("The Great Gatsby", "F. Scott Fitzgerald", "1925-04-10", "This is a book about a great thing.", 10),
("Harry Potter and the Sorcerer`s Stone", "J.K. Rowling", "1997-06-26", "This is a book about wizards.", 70),
("The Hobbit", "J.R.R. Tolkien", "1937-07-21", "This is a book about hobbits.", 5);