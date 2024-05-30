-- Step 1: Create the author table and insert initial data
CREATE TABLE author (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    birth_year INT NOT NULL,
    death_year INT
);

INSERT INTO author (id, name, birth_year, death_year) VALUES
(1, 'Marcella Cole', 1983, NULL),
(2, 'Lisa Mullins', 1891, 1950),
(3, 'Dennis Stokes', 1935, 1994),
(4, 'Randolph Vasquez', 1957, 2004),
(5, 'Daniel Branson', 1965, 1990);

-- Step 2: Create the book table and insert initial data
CREATE TABLE book (
    id INT PRIMARY KEY,
    author_id INT,
    title VARCHAR(255) NOT NULL,
    publish_year INT NOT NULL,
    publishing_house VARCHAR(255) NOT NULL,
    FOREIGN KEY (author_id) REFERENCES author(id)
);

INSERT INTO book (id, author_id, title, publish_year, publishing_house) VALUES
(1, NULL, 'Soulless girl', 2008, 'Golden Albart'),
(2, NULL, 'Weak Heart', 1980, 'Diarmud Institute'),
(3, 4, 'Faith Of Light', 1995, 'White Cloud Production'),
(4, NULL, 'Memory Of Hope', 2000, 'Rutis Enterprises'),
(5, NULL, 'Warrior Of Wind', 2005, 'Mavericks');

-- Step 3: Insert a new author with id = 6
INSERT INTO author (id, name, birth_year, death_year) VALUES
(6, 'New Author', 1970, NULL);

-- Step 4: Update book set author_id to 6 where id = 5
UPDATE book
SET author_id = 6
WHERE id = 5;


drop table if exists book;

select * from book;
select * from author;

-- List All Books and Their Authors
SELECT name, title
FROM author
JOIN book ON author.id = book.author_id;

-- List Authors and Books Published After 2005
SELECT name, title, publish_year
FROM author
LEFT JOIN book ON author.id = book.author_id
WHERE publish_year > 1000;