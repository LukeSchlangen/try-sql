-- We will rely on the completed_date to be null if it has not been completed
CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title varchar(255) NOT NULL,
  genre varchar(255) NOT NULL,
  duration INTEGER NOT NULL
 );

INSERT INTO movies (title,genre,duration)
VALUES ('Metropolis','Sci-Fi', 153);

INSERT INTO movies (title,genre,duration)
VALUES ('Nosferatu','Horror', 94);

INSERT INTO movies (title,genre,duration)
VALUES ('The Kid','Comedy', 68);

INSERT INTO movies (title,genre,duration)
VALUES ('The Gold Rush','Adventure', 95);

DELETE FROM movies
WHERE title='The Kid';

SELECT title
FROM movies;

SELECT title, genre
FROM movies;

SELECT *
FROM movies;

SELECT *
FROM movies
WHERE ID = 2;

SELECT *
FROM movies
WHERE title = 'The Kid';

SELECT duration
FROM movies
WHERE title = 'The Kid';

SELECT title
FROM movies
ORDER BY duration;

SELECT title
FROM movies
ORDER BY duration DESC;

SELECT title
FROM movies
WHERE duration > 100;

SELECT title
FROM movies
WHERE genre <> 'Horror';

SELECT title
FROM movies
WHERE genre <> 'Comedy'
AND duration < 100;

SELECT title
FROM movies
WHERE genre = 'Comedy'
OR genre = 'Adventure';

SELECT id, title
FROM movies
WHERE duration >= 86
AND genre = 'Horror'
ORDER BY duration;

CREATE TABLE concessions (
  id SERIAL PRIMARY KEY,
  item varchar(255) NOT NULL,
  price varchar(255) NOT NULL,
  size varchar(255) NOT NULL
 );

DROP TABLE concessions;

CREATE TABLE concessions (
  id SERIAL PRIMARY KEY,
  item varchar(255) NOT NULL,
  price decimal(10,2) NOT NULL,
  size varchar(255) NOT NULL
 );
 
INSERT INTO concessions (item, price, size)
VALUES ('Popcorn',2.00,'Small');

INSERT INTO concessions (item, price, size)
VALUES ('Popcorn',4.00,'Large');

INSERT INTO concessions (item, price, size)
VALUES ('Candy',3.00,'Regular');

INSERT INTO concessions (item, price, size)
VALUES ('Soda',1.50,'Small');

INSERT INTO concessions (item, price, size)
VALUES ('Soda',2.50,'Large');

INSERT INTO concessions (item, price, size)
VALUES ('Hotdog',2.00,'Regular');

SELECT *
FROM concessions;
 
SELECT item, price, size
FROM concessions
WHERE item = 'Popcorn';










