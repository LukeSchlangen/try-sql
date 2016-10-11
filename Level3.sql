-- We will rely on the completed_date to be null if it has not been completed
DROP TABLE movies;

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title varchar(255) NOT NULL,
  genre varchar(255),
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
  price decimal(10,2),
  size varchar(255)
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


-- Begin Part 2 of Try SQL
INSERT INTO movies (title, genre, duration)
VALUES ('The Circus','Comedy',71);


INSERT INTO movies (title, duration)
VALUES ('The Circus',71);

SELECT *
FROM movies;

INSERT INTO movies (title, genre, duration)
VALUES ('Peter Pan', 'Animation',134);

INSERT INTO movies (title, genre, duration)
VALUES ('The Wind','Romance',95);

INSERT INTO concessions (item, size)
VALUES ('Nachos','Regular');

UPDATE movies
SET genre = 'Comedy'
WHERE genre IS NULL;

UPDATE movies
SET genre = 'Comedy'
WHERE genre IS NULL;

UPDATE movies
SET genre = 'Romance'
WHERE title = 'The Circus';

UPDATE concessions
SET price = 1
WHERE item = 'Popcorn' OR item = 'Candy' OR price IS NULL;

SELECT *
FROM movies;

DELETE FROM movies
WHERE title = 'The Circus';

-- Begin Part 3 of Try SQL
CREATE DATABASE chaplin;
DROP DATABASE chaplin;
CREATE DATABASE chaplin;


CREATE TABLE movies
(
id int,
title varchar(50),
genre varchar(15),
duration int
);

CREATE TABLE advertisements
(
id int,
name varchar(50),
category varchar(50),
cost int
);

INSERT INTO advertisements
VALUES (1,'Poster', 'Paper',20);

INSERT INTO advertisements
VALUES (2,'Billboard', 'Paper',100);

INSERT INTO advertisements
VALUES (3,'Banner Ad', 'Web',35);

INSERT INTO advertisements
VALUES (4,'Commercial', 'Paper',150);

UPDATE advertisements
SET category = 'Television'
WHERE name = 'Commercial';

SELECT *
FROM advertisements
ORDER BY id;

DROP TABLE advertisements;

ALTER TABLE movies
ADD COLUMN ratings int;

UPDATE movies
SET ratings = 9;

SELECT *
FROM movies
ORDER BY id;

ALTER TABLE movies
DROP COLUMN ratings;



