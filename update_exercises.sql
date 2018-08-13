USE codeup_test_db;

# SELECT QUERIES
# Select all albums in your table.
	SELECT name AS 'All albums in the table'
	FROM albums;


# Select all albums released before 1980
	SELECT name AS 'albums released before 1980'
	FROM albums
	WHERE release_date < 1980;


# Select all albums by Michael Jackson
	SELECT name AS 'albums by Michael Jackson'
	FROM albums
	WHERE artist = 'Michael Jackson';


# UPDATE QUERIES
# Make all the albums 10 times more popular (sales * 10)
	UPDATE albums
	SET sales = sales * 10;
	SELECT * FROM albums;


# Move all the albums before 1980 back to the 1800s.
	UPDATE albums
	SET release_date = release_date - 100
	WHERE release_date < 1980;


# Change "Michael Jackson" to "Peter Jackson"
	UPDATE albums
	SET artist = 'Peter Jackson'
	WHERE artist = 'Michael Jackson';
	SELECT * FROM albums;








