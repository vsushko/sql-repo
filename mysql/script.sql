-- The Ultimate MySQL Bootcamp: Go from SQL Beginner to Expert
CREATE database pet_shop;

show databases;

drop database pet_shop;

use pet_shop;

CREATE table cats (
	name varchar(50),
	age int
);

select
	*
from
	dogs;

CREATE table dogs(
	name varchar(50),
	breed varchar(50),
	age int
);
	

show tables;

show columns from cats;

show columns from dogs;

desc cats;

desc dogs;

drop table cats;

drop table dogs;

create table pastries (
	name varchar(50),
	quantity int
);

show tables;

desc pastries;

drop table pastries;

-- https://sqlzoo.net/wiki/SQL_Tutorial
	
use pet_shop;

INSERT into cats(name, age) values("Blue Steele", 5);
INSERT into cats(name, age) values("Jenkins", 7);
INSERT into cats(age, name) values(2, "Beth");

INSERT into cats(name, age) values("Meatball", 5), ("Turkey", 7), ("Potato", 2);


SELECT * from cats;


create table people (
	first_name varchar(20),
	second_name varchar(20),
	age int);

INSERT into people (first_name, second_name, age) values('Tina', 'Belcher', 42), ('Linda', 'Belcher', 45);

select * from people;


INSERT INTO people(first_name, second_name, age)
VALUES ('Tina', 'Belcher', 13);
INSERT INTO people(age, second_name, first_name)
VALUES (42, 'Belcher', 'Bob');

drop table people;

INSERT into cats (name) values('Todd');

select * from cats

CREATE table cats2 (
	name varchar(50) not null,
	age int not null
);

INSERT into cats2 (name, age) values('Bilbo',19);

describe cats2;

CREATE table shops (name varchar(100));

INSERT into shops (name) values ('shoe emporium');
INSERT into shops (name) values ('mario\'s emporium');


select * from shops;

create table cats3
(
	name varchar(50) not null default 'mystery',
	age int default 99 not null
);

DROP  table cats3;


INSERT into cats3() values();


SELECT * from cats3;

create table unique_cats(
	cat_id int not null primary key,
	name varchar(100),
	age int
);

select * from unique_cats;

describe unique_cats;

CREATE table unique_cats2 (
  cat_id int,
  name varchar(100) not null,
  age int not null,
  primary key(cat_id)
 )


describe unique_cats2;

insert into unique_cats3 (name, age) values ('oingo', 2);

CREATE table unique_cats3 (
  cat_id int auto_increment,
  name varchar(100) not null,
  age int not null,
  primary key(cat_id)
 )

 SELECT * from unique_cats3;

create table employees (
	id int auto_increment primary key,
	first_name varchar(100) not null,
	middle_name varchar(100),
	last_name varchar(100) not null,
	age int not null,
	current_status varchar(100) not null default 'employeed'
);


drop table employees;

INSERT INTO employees(first_name, last_name, age) VALUES ('Dora', 'Smith', 58);

SELECT * from employees;



drop table cats;

CREATE TABLE cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
); 


INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

      
select * from cats;

SELECT name from cats;

SELECT name, age from cats WHERE age = 4;

SELECT cat_id from cats;

SELECT name, breed from cats;

select name, age from cats WHERE breed ='Tabby';

select cat_id, age from cats WHERE cat_id = age;

SELECT * from cats WHERE cat_id = age;

SELECT name as kitty_name from cats;

SELECT * from cats;

UPDATE employees set last_name = 'roosterbeard';

SELECT * from employees;

update employees set current_status = 'laid-off', last_name = 'who cares';

SELECT * from cats;

update cats set age = 14 where name = 'Misty';

UPDATE cats SET name='Jack' WHERE name='Jackson'; 


DELETE from cats where name = 'Egg';

SELECT * from cats;

SELECT * from employees e ;

delete from cats WHERE age = 4;

DELETE from cats WHERE  age = cat_id;

DELETE from cats;


CREATE database shirts_db;

use shirts_db;

CREATE table shirts(
	shirt_id int auto_increment primary key,
	article varchar(50),
	color varchar(50),
	shirt_size varchar(5),
	last_worn int
);

desc shirts ;

INSERT INTO shirts (article, color, shirt_size, last_worn)  
VALUES 
	('t-shirt', 'white', 'S', 10),
	('t-shirt', 'green', 'S', 200),
	('polo shirt', 'black', 'M', 10),
	('tank top', 'blue', 'S', 50),
	('t-shirt', 'pink', 'S', 0),
	('polo shirt', 'red', 'M', 5),
	('tank top', 'white', 'S', 200),
	('tank top', 'blue', 'M', 15);

INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('polo shirt','purple', 'M', 50);

SELECT * from shirts ;

SELECT article, color from shirts ;

SELECT * from shirts where shirt_size = 'M';

UPDATE shirts set shirt_size = 'L' where article = 'polo shirt';

update shirts set last_worn = 0 where last_worn = 15;

update shirts set color = 'off white', shirt_size = 'XS' where color = 'white';

select * from shirts where last_worn = 200;

DELETE from shirts where last_worn = 200;

SELECT * from shirts where article = 'tank top';

DELETE from shirts where article = 'tank top';


select * from shirts ;

delete from shirts;

drop table shirts;

show tables;

desc shirts;

create database book_shop;

use book_shop;

CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

drop table books;

select * from books;

desc books;

-- source book_data.sql

-- concat

select CONCAT('h', 'e', 'l');

SELECT CONCAT(author_fname, ' ', author_lname) as author_name from books;

SELECT CONCAT_WS(' - ', title, author_fname, author_lname) as author_name from books;

-- substring

SELECT SUBSTRING('Hello world', 2, 7); 

SELECT SUBSTRING('Hello world', 7); 

SELECT SUBSTRING('Hello world', -3); 

SELECT SUBSTR(title, 1, 10) as 'short title' from books; 

SELECT CONCAT(SUBSTR(title, 1, 10), '...') as short_title from books;

SELECT
	concat(SUBSTR(author_fname, 1, 1), '.', SUBSTR(author_lname, 1, 1), '.') as author_initials
from
	books;

SELECT REPLACE(title, ' ', '-') from books b ;

SELECT REPLACE(title, 'e ', 3) from books b ;

SELECT REPLACE('cheese bread coffee milk', ' ', ' and ');

SELECT REVERSE('chicken nuggeets');

SELECT REVERSE(author_fname) from books b ;

SELECT concat(author_fname, REVERSE(author_fname)) from books; 

SELECT CHAR_LENGTH('Hello World');
SELECT LENGTH("Hello World");
SELECT CHAR_LENGTH(title) as length, title FROM books;
SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;

SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;

SELECT UPPER('Hello World');
SELECT UCASE('Hello World');

SELECT LOWER('Hello World');
SELECT LCASE('Hello World');

SELECT CONCAT('I LOVE ', UPPER(title), ' !!!') from books;

SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;

SELECT INSERT('Hello Bobby', 6, 0, ' There');

SELECT INSERT('Hello Bobby', 6, 4, ' There');
SELECT INSERT('Hello Bobby', 6, 6, ' There');

SELECT LEFT('omghahalol!', 3);
SELECT LEFT (author_lname, 1) from books b;

SELECT REPEAT ('ha', 4); 

SELECT TRIM('   boston   '); 

SELECT TRIM(LEADING '.' FROM  '.....san antonio.') ;
SELECT TRIM(TRAILING  '.' FROM  '.....san antonio.') ;
SELECT TRIM(BOTH  '.' FROM  '.....san antonio.') ;

SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));

SELECT REPLACE(title, ' ', '->') as title from books;

SELECT author_lname as forwards, REVERSE(author_lname) as backwards from books; 

SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) as 'full name is caps' from books;

SELECT CONCAT(title, ' was reeleased in ', released_year) as blurb from books;

SELECT title, CHAR_LENGTH(title) as character_count from books;

SELECT 
	CONCAT(SUBSTR(title, 1, 10), '...') as short_title,
	CONCAT(author_lname, '.', author_fname) as author,
	CONCAT(stock_quantity, ' in stsock') as quantity
FROM books;


-- refining selections --

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
          
SELECT COUNT(author_lname) from books;     

SELECT COUNT(DISTINCT author_lname) from books;         

SELECT CONCAT(author_fname, ' ', author_lname) from books; 

SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) from books; 

SELECT DISTINCT author_fname, author_lname from books;

SELECT DISTINCT author_fname, author_lname, released_year from books;

SELECT book_id, author_fname, author_lname  from books order by author_fname ;

SELECT title, pages from books order by pages DESC;

SELECT * FROM books ORDER BY released_year;

-- order by second column
SELECT title, author_fname, author_lname from books order by 2;

SELECT author_fname, author_lname from books order by author_fname, author_lname;

SELECT concat(author_fname, ' ', author_lname) as author from books order by author;

SELECT book_id, title, released_year from books order by released_year limit 5;

SELECT title, released_year from books order by released_year desc limit 0, 5;

SELECT title, released_year from books order by released_year desc limit 2, 5;

SELECT title FROM books LIMIT 5, 123219476457;

SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 10,1;

SELECT title, author_fname, author_lname from books WHERE author_fname LIKE '%da%';

SELECT * FROM books WHERE title LIKE  '%:%';

SELECT * FROM books WHERE author_fname LIKE  '____';

SELECT * FROM books WHERE author_fname LIKE  '_a_';

SELECT * FROM books WHERE author_fname LIKE  '%n';

SELECT * FROM books WHERE title  LIKE  '%\%%';

SELECT * FROM books WHERE title  LIKE  '%\_%';

SELECT title from books WHERE title LIKE  '%stories%';

SELECT title, pages from books order by pages desc limit 1;

SELECT CONCAT(title, ' - ', released_year) as summary from books order by released_year desc limit 3; 

SELECT title, author_lname from books WHERE author_lname like '% %';

SELECT title, released_year, stock_quantity from books order by stock_quantity LIMIT 3;

SELECT title, author_lname from books order by author_lname, title;

SELECT title, author_lname from books order by 2, 1;

SELECT CONCAT('MY FAVORITE AUTHOR IS ', UPPER(author_fname), ' ', UPPER(author_lname), '!') AS yell FROM books ORDER BY author_lname;

-- aggretage functions --

SELECT count(*) from books;

SELECT count(author_fname) from books;

SELECT count(DISTINCT author_fname) from books;

SELECT count(DISTINCT author_lname) from books;

SELECT COUNT(DISTINCT released_year) from books;

SELECT count(*) from books where title like '%the%';

SELECT author_lname from books group by author_lname;

SELECT author_lname, COUNT(*) as books_written from books group by author_lname ORDER by books_written desc;

SELECT released_year, count(*) as released_by_year from books group by released_year order by released_by_year desc;

SELECT author_lname, title from books group by author_lname, title; -- error

SELECT min(released_year) from books;

SELECT max(released_year) from books;

SELECT min(author_lname), max(author_fname) from books;

SELECT title, pages title from books order by pages desc limit 1;

SELECT * from books where pages = (SELECT max(pages) from books);

INSERT into books(title, pages) values ('my life in words', 634);

SELECT * from books where pages = (SELECT max(pages) from books);

SELECT min(released_year) from books;

SELECT title, released_year from books where released_year = (SELECT min(released_year) from books);

SELECT author_fname, author_lname, count(*) from books group by author_lname, author_fname ;

SELECT CONCAT(author_fname, ' ', author_lname) as author, count(*) from books group by author; 

SELECT author_lname, MIN(released_year) FROM books GROUP BY author_lname;

SELECT author_lname, MAX(released_year), MIN(released_year) FROM books GROUP BY author_lname;

SELECT 
	author_lname, 
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release,
      MAX(pages) AS longest_page_count
FROM books GROUP BY author_lname;

SELECT 
	author_lname, 
        author_fname,
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release
FROM books GROUP BY author_lname, author_fname;

SELECT author_lname, sum(pages) from books group by author_lname;

SELECT author_lname, count(*), sum(released_year) from books group by  author_lname;

SELECT sum(author_lname) from books;

SELECT avg(released_year) from books;

SELECT avg(stock_quantity) from books;

SELECT released_year, AVG(stock_quantity), count(*)  from books group by released_year;

SELECT count(*) from books;

SELECT released_year, count(*) from books group by released_year;

SELECT AVG(released_year) from books group by author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname) as author, pages from books where pages = (SELECT max(pages) from books);

SELECT CONCAT(author_fname, ' ', author_lname) as author, pages from books order BY pages DESC limit 1;


SELECT released_year as year,
	   COUNT(*) as '# books',
	   AVG(pages) as 'avg pages'
from books group by released_year ORDER by released_year;


-- datatypes

create table friends (name varchar(10));

INSERT into friends (name) values ('tom'), ('juan pablo'), ('james');

CREATE table states( abbr char(2));

INSERT into states (abbr) values ('CA'), ('NY');

describe states;

INSERT into states (abbr) values ('x');

SELECT * from states;

SELECT CHAR_LENGTH(abbr) from states; 

CREATE table parent (children tinyint);

INSERT into parent(children) values(2);
INSERT into parent(children) values(-2);

-- INSERT into parent(children) values(200); -- error

SELECT * from parent;

DROP table parent;

CREATE table parent (children tinyint unsigned);

INSERT into parent(children) values(-2);

INSERT into parent(children) values(1.5);

SELECT * from parent;

INSERT into parent(children) values(90.0008);

create table products(price decimal(5,2));

INSERT INTO products(price) values (5.5);

SELECT * from products;

INSERT INTO products(price) values (414141.5); -- error

INSERT INTO products(price) values (5.026);

show warnings;

CREATE table nums (x float, y double);

INSERT INTO nums (x, y) values (1.123, 1.123);
INSERT INTO nums (x, y) values (1.12345678, 1.12345678);
INSERT INTO nums (x, y) values (1.12345678, 1.1234567812312312312313);

SELECT * from nums;

CREATE table people (name varchar(100), birthdate date, birthtime time, birhdt datetime);

desc people;

INSERT into people (name, birthdate, birthtime, birhdt) values ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00');

INSERT INTO people (name, birthdate, birthtime, birhdt) VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10');
 
INSERT INTO people (name, birthdate, birthtime, birhdt) VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');

SELECT * from people;

SELECT CURTIME();

SELECT NOW();

SELECT CURRENT_TIME();

INSERT INTO people (name, birthdate, birthtime, birhdt) VALUES ('Juan', CURDATE(), CURTIME(), NOW());


SELECT * FROM people;

SELECT birthdate from people;

SELECT birthdate, day(birthdate) from people;

SELECT birthdate, day(birthdate), DAYOFWEEK(birthdate) from people;

SELECT birthdate, day(birthdate), DAYOFWEEK(birthdate), DAYOFYEAR(birthdate)  from people;

SELECT birthdate, day(birthdate), DAYOFWEEK(birthdate), DAYOFYEAR(birthdate), MONTHNAME(birthdate)  from people;

SELECT 
    birthdate,
    MONTHNAME(birthdate),
    YEAR(birthdate)
FROM people;

SELECT name, birthtime, hour(birthtime), MINUTE(birthtime), SECOND(birthtime) from people;

SELECT name, birthdt, date(birthtime), MINUTE(birthtime), SECOND(birthtime) from people;

 
SELECT 
    birhdt,
    MONTH(birhdt),
    DAY(birhdt),
    HOUR(birhdt),
    MINUTE(birhdt)
FROM people;

SELECT CONCAT(MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate))  from people;

SELECT DATE_FORMAT(birthdate, '%a %b %D')  from people;

SELECT DATE_FORMAT(birhdt, '%H:%i')  from people;

SELECT birhdt, DATE_FORMAT(birhdt, 'BORN ON: %r') FROM people;

SELECT birhdt, DATE_FORMAT(birhdt, 'BORN ON: %r') FROM people;

SELECT birthdate, DATEDIFF(CURDATE(), birthdate) from people; 

SELECT DATE_ADD(CURDATE(), INTERVAL 1 day); 

SELECT NOW() - INTERVAL 18 year; 

SELECT name, birthdate, year(birthdate + INTERVAL 21 year) as will_be_21 from people;

SELECT now();

SELECT Timestamp('2023-10-29 15:11:55');

CREATE table captions (text varchar(100), created_at timestamp default current_timestamp);

INSERT INTO captions (text) values ('just me and the girls chillin');

INSERT INTO captions (text) values ('beautiful sunset');

SELECT * from captions;

CREATE table captions2 (text varchar(100), created_at timestamp default current_timestamp, updated_at timestamp on UPDATE current_timestamp);

INSERT INTO captions2 (text) values ('just me and the girls chillin');

update captions2 set text = 'I lovee life!';

SELECT * from captions2;

-- What's a good use case for CHAR?
 
-- Used for text that we know has a fixed length, e.g., State abbreviations, 
-- abbreviated company names, etc.

create table inventory (item_name varchar(100), price decimal (8,2), quantity int);

-- What's the difference between DATETIME and TIMESTAMP?
 
-- They both store datetime information, but there's a difference in the range, 
-- TIMESTAMP has a smaller range. TIMESTAMP also takes up less space. 
-- TIMESTAMP is used for things like meta-data about when something is created
-- or updated.

SELECT curtime();

select CURDATE();

SELECT DAYOFWEEK(CURDATE());

SELECT DAYOFWEEK(NOW()); 

SELECT DATE_FORMAT(NOW(), '%w') + 1;

SELECT DAYNAME(NOW());
SELECT DATE_FORMAT(NOW(), '%W');
 
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');
 
SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

CREATE table tweets(
	content varchar(140),
	username varchar(20),
	created_at timestamp default now()
);

INSERT into tweets (content, username) values ('this is my first tweet', 'myname');
INSERT INTO tweets (content, username) VALUES('this is my second tweet', 'myname');

SELECT * from tweets;

-- comparison & logical operators

SELECT title, author_lname from books where released_year != 2017;

SELECT title, author_lname from books where released_year != 'Gaiman';

select title from books where title not like '% %';

SELECT title, author_fname , author_lname from books where author_fname not like 'da%';

SELECT title, author_fname , author_lname from books where title not like '%e%';

SELECT title, author_fname , author_lname from books where title not like '%a%';

SELECT * from books WHERE released_year > 2005;

SELECT * from books WHERE pages  > 500;

SELECT 99 > 1;

select 80 > 40;

select title, pages, released_year from books where pages > 500;

SELECT 1 > NULL;

SELECT title, releassed_year from books where released_year < 2000 order by released_year;

SELECT title, pages  from books where pages  < 200;

SELECT title, released_year from books where released_year > 2010;

SELECT title, released_year from books where released_year >= 2010;

SELECT title, released_year from books where released_year < 2010;

SELECT * from books WHERE author_lname = 'Eggers' AND released_year > 2010;

SELECT title, author_lname, released_year from books WHERE author_lname = 'Eggers' AND released_year > 2010;

SELECT * from books WHERE author_lname = 'Eggers' AND released_year > 2010 AND title LIKE '%novel%';

SELECT title, pages from books where CHAR_LENGTH(title) > 30 and pages  > 500; 

SELECT title, author_lname, released_year from books WHERE author_lname = 'Eggers' OR released_year > 2010;

SELECT title, pages from books where pages < 200 or title like '%stories';

SELECT title, released_year from books WHERE released_year >= 2004 and released_year <= 2015;

SELECT title, released_year from books WHERE released_year BETWEEN 2004 and 2014;

SELECT title, pages from books WHERE pages BETWEEN 200 and 300;

SELECT title, pages from books WHERE pages not BETWEEN 200 and 300;

SELECT * from people WHERE birthdate < '2005-01-01';

SELECT * from people WHERE year(birthdate) < 2005;

SELECT * from people WHERE birthtime > '12:00:00';

SELECT * from people WHERE HOUR(birthtime) > 9;

SELECT CAST('09:00:00' AS TIME);

SELECT * from people WHERE birthtime BETWEEN '11:00:00' and '16:00:00';

SELECT * from people WHERE birthtime BETWEEN cast('11:00:00' AS TIME) and cast('16:00:00' AS TIME);

SELECT * from people WHERE HOUR(birthtime) BETWEEN 11 and 16;

SELECT title, author_lname from books where author_lname in('Carver', 'Lahiri', 'Smith');

SELECT title, released_year from books WHERE released_year not in (2010, 2002, 2008, 2016, 2012, 2004);

SELECT title, released_year from books WHERE released_year % 2 != 0;

SELECT title, released_year, 
	CASE 
		when released_year >= 2000 then 'Modern Lit'
		else '20th Century Lit'
	END as GENRE
from books;

SELECT title, stock_quantity, 
	CASE 
		when stock_quantity between 0 and 50 THEN '*'
		when stock_quantity between 51 and 100 THEN '**'
		else '***'
	END as STOCK
from books;

SELECT title, stock_quantity, 
	CASE 
		when stock_quantity between 0 and 40 THEN '*'
		when stock_quantity between 41 and 70 THEN '**'
		when stock_quantity between 71 and 100 THEN '***'
		when stock_quantity between 101 and 140 THEN '****'
		else '*****'
	END as STOCK
from books;

SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity <= 40 THEN '*'
        WHEN stock_quantity <= 70 THEN '**'
        WHEN stock_quantity <= 100 THEN '***'
        WHEN stock_quantity <= 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books;
   
 SELECT * from books where author_lname is null;

 SELECT * from books where author_lname is not null;

SELECT * from books WHERE released_year < 1980;

SELECT * from books WHERE author_lname = 'Eggers' or author_lname = 'Chabon';

SELECT * from books WHERE author_lname = 'Lahiri' AND released_year > 2000;

SELECT 10 != 10;

SELECT 15 > 14 and 99 - 5 <= 94;

SELECT 1 in (5, 3) or 9 BETWEEN 8 and 10;

SELECT * from books WHERE pages >= 100 and pages <= 200;

SELECT * from books WHERE pages BETWEEN 100 and 200;

SELECT title, author_lname from books WHERE author_lname like 'C%' or author_lname LIKE 'S%';

SELECT title, author_lname from books where substr(author_lname, 1, 1) in ('C', 'S');

SELECT title, author_lname,
CASE
    WHEN title LIKE '%stories%' THEN 'Short Stories'
    WHEN title = 'Just Kids' THEN 'Memoir' 
    WHEN title = 'A Heartbreaking Work of Staggering Genius' THEN 'Memior'
    ELSE 'Novel'
END AS type
FROM books;

SELECT author_fname, author_lname, 
	CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
	END AS count
FROM books
WHERE author_lname IS NOT NULL
GROUP BY author_fname, author_lname;

-- constraints & alter table

create table contacts (
	name varchar(100) not null,
	phone varchar(15) not null unique
);

INSERT INTO contacts (name, phone) values ('name', '89123456789');

SELECT * from contacts;

INSERT INTO contacts (name, phone) values ('tim', '89123456789'); -- error

CREATE table partiers(
	name varchar(50),
	age int check(age > 18)
);

INSERT into partiers(name, age) values ('bluecat', 50);

SELECT * from partiers;

INSERT into partiers(name, age) values ('bluecat', -3); -- error

CREATE table palindromes(
	word varchar(100) check(reverse(word) = word)
);

INSERT INTO palindromes(word) values('mom');

SELECT * from palindromes;

CREATE table parties2 (
	name varchar(50), 
	age INT,
	CONSTRAINT age_over_18 CHECK (age > 18)
);

INSERT into parties2(name, age) values ('name', 12); -- Check constraint 'age_over_18' is violated.

INSERT into parties2(name, age) values ('name', 19);

SELECT * from parties2;

CREATE table companies (
	supplier_id int auto_increment,
	name varchar(255) not null,
	phone varchar(15) not null unique,
	address varchar(255) not null,
	primary key (supplier_id),
	constraint name_address unique (name, address)
);

INSERT into companies (name, phone, address) values ('name', 'phone', '123 address');

SELECT * from companies;

INSERT into companies (name, phone, address) values ('name', 'phone', '123 address'); -- Duplicate entry companies.phone

INSERT into companies (name, phone, address) values ('name', 'phone2', '123 address'); -- Duplicate entry 'name-123 address' for key 'companies.name_address'

CREATE table houses (
	purchase_price int not null,
	sale_price int not null,
	constraint sprice_gt_pprice check (purchase_price <= sale_price)
);

INSERT into houses (purchase_price, sale_price) values (100, 200);

INSERT into houses (purchase_price, sale_price) values (200, 100);

SELECT * from houses;

ALTER table companies add column city varchar(25);

desc companies;

SELECT * from companies;

alter table companies add column phone varchar(15);

desc companies;

ALTER table companies add column employee_count int not null; -- or ALTER table companies add column employee_count int not null default 1;

ALTER table companies drop column phone;

desc companies;

SELECT * from companies;

ALTER table companies drop column employee_count;

rename table companies to suppliers;

SELECT * from companies;

SELECT * from suppliers;

rename table suppliers to companies;

desc companies;

ALTER table companies rename column name to company_name;

desc companies;

alter table companies modify company_name varchar(100) default 'unknown';

desc companies;

INSERT INTO companies (address) values ('214214 address');

SELECT * from companies;

-- ALTER TABLE suppliers CHANGE business biz_name VARCHAR(50);

desc houses;

ALTER table houses add constraint positive_pprice check (purchase_price >= 0);

insert into houses (purchase_price, sale_price) values(-1, 4); -- Check constraint 'positive_pprice' is violated

ALTER table houses drop constraint positive_pprice;

insert into houses (purchase_price, sale_price) values(-1, -4); -- fine

desc houses;

SELECT * from houses;

-- one to many & joins
CREATE database shop;

use shop;

DROP table customers;
DROP table orders;

CREATE table customers (
	id int primary key auto_increment,
	first_name varchar(50),
	last_name varchar(50),
	email varchar(50)
);

CREATE table orders (
	id int primary key auto_increment,
	order_date date,
	amount decimal(8,2),
	customer_id int,
	FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE
);

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');

INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);
      
SELECT * from orders;

SELECT * FROM customers;

SELECT * from customers where last_name = 'George';
SELECT * from orders where customer_id = 1;

SELECT * from orders where customer_id = (SELECT id from customers where last_name = 'George');

SELECT * from customers, orders;

SELECT first_name, last_name, amount from customers join orders on customers.id = orders.customer_id;

SELECT first_name, last_name, sum(amount) as total from customers join orders on customers.id = orders.customer_id
group by first_name, last_name
order by total;

SELECT first_name, last_name, amount from customers
left join orders on orders.customer_id = customers.id;

SELECT first_name, last_name, amount from orders 
left join customers on orders.customer_id = customers.id;

SELECT first_name, last_name, IFNULL(sum(amount), 0) as money_spent from customers
left join orders on customers.id = orders.customer_id
group by first_name, last_name;

SELECT first_name, last_name, order_date, amount from customers
right join orders on customers.id = orders.customer_id;

INSERT INTO orders (amount, order_date) values (100, curdate());

SELECT * from orders;
SELECT * from customers;

DELETE from customers WHERE last_name = 'George';

CREATE table students (
	id int primary key auto_increment,
	first_name varchar(50)
);

CREATE table papers (
	title varchar(50),
	grade int,
	student_id int,
	foreign key (student_id) references students(id)
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
 
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

SELECT first_name, title, grade
from students
join papers on papers.student_id = students.id
order by grade desc;

SELECT first_name, title, grade
from students left join papers on papers.student_id = students.id;

SELECT first_name, IFNULL(title, 'MISSING'), IFNULL(grade, 0)
from students left join papers on papers.student_id = students.id;

SELECT first_name, IFNULL(AVG(grade), 0) as average
from students left join papers on papers.student_id = students.id
group by first_name
order by average desc;

SELECT  first_name,
		IFNULL(AVG(grade), 0) as average,
		CASE WHEN IFNULL(AVG(grade), 0) >= 75 THEN 'passing' 
			ELSE 'failing' 
		END as passing_status
from students left join papers on students.id = papers.student_id
group by first_name
order by average desc;
	
-- many to many

CREATE database tv_db;
use tv_db;

CREATE table reviewers (
	id int primary key auto_increment,
	first_name varchar(50) not null,
	last_name varchar(50) not null
);

CREATE table series (
	id int primary key auto_increment,
	title varchar(100),
	released_year YEAR,
	genre varchar(100)
);

CREATE table reviews(
	id int primary key auto_increment,
	rating decimal(2,1),
	series_id int,
	reviewer_id int,
	foreign key (series_id) references series(id),
	foreign key (reviewer_id) references reviewers(id)
);

show tables;

INSERT INTO series (title, released_year, genre) VALUES
    ('Archer', 2009, 'Animation'),
    ('Arrested Development', 2003, 'Comedy'),
    ("Bob's Burgers", 2011, 'Animation'),
    ('Bojack Horseman', 2014, 'Animation'),
    ("Breaking Bad", 2008, 'Drama'),
    ('Curb Your Enthusiasm', 2000, 'Comedy'),
    ("Fargo", 2014, 'Drama'),
    ('Freaks and Geeks', 1999, 'Comedy'),
    ('General Hospital', 1963, 'Drama'),
    ('Halt and Catch Fire', 2014, 'Drama'),
    ('Malcolm In The Middle', 2000, 'Comedy'),
    ('Pushing Daisies', 2007, 'Comedy'),
    ('Seinfeld', 1989, 'Comedy'),
    ('Stranger Things', 2016, 'Drama');

INSERT INTO reviewers (first_name, last_name) VALUES
    ('Thomas', 'Stoneman'),
    ('Wyatt', 'Skaggs'),
    ('Kimbra', 'Masters'),
    ('Domingo', 'Cortes'),
    ('Colt', 'Steele'),
    ('Pinkie', 'Petit'),
    ('Marlon', 'Crafford');

INSERT INTO reviews(series_id, reviewer_id, rating) VALUES
    (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
    (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
    (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
    (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
    (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
    (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
    (7,2,9.1),(7,5,9.7),
    (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
    (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
    (10,5,9.9),
    (13,3,8.0),(13,4,7.2),
    (14,2,8.5),(14,3,8.9),(14,4,8.9);
   
SELECT * from reviewers;

SELECT * from series;

SELECT * from reviews;

SELECT title, rating from series 
join reviews on series.id = reviews.series_id; 

SELECT title, ROUND(AVG(rating), 2) as avg_rating from series 
join reviews on series.id = reviews.series_id
group by title
order by avg_rating; 

SELECT first_name, last_name, rating from reviewers
join reviews on reviews.reviewer_id = reviewers.id; 

SELECT title as unreviewed_series from series
left join reviews on series.id = reviews.series_id
where rating IS NULL;

SELECT title as unreviewed_series from reviews
right join series on series.id = reviews.series_id
where rating is null;

SELECT genre, ROUND(AVG(rating), 2) avg_rating from series 
join reviews on series.id = reviews.series_id
group by genre
order by avg_rating;

SELECT  first_name,
		last_name,
		count(rating),
		IFNULL(min(rating), 0),
		IFNULL(max(rating), 0),
		round(IFNULL(AVG(rating), 0), 2) as average,
		CASE 
			WHEN count(rating) >= 10 then 'POWERUSER'
			WHEN count(rating) >= 0 then 'ACTIVE'
			ELSE 'INACTIVE'
		END AS status
	from reviewers
left join reviews on reviewers.id = reviews.reviewer_id
group by first_name, last_name;

SELECT  first_name,
		last_name,
		count(rating),
		IFNULL(min(rating), 0),
		IFNULL(max(rating), 0),
		round(IFNULL(AVG(rating), 0), 2) as average,
		if(count(rating) > 0 , 'ACTIVE', 'INACTIVE') AS status
	from reviewers
left join reviews on reviewers.id = reviews.reviewer_id
group by first_name, last_name;

SELECT title, rating, CONCAT(first_name, ' ', last_name) as reviewer from reviews 
inner join series on reviews.series_id = series.id
inner join reviewers on reviews.reviewer_id = reviewers.id;

SELECT 
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM
    reviewers
        INNER JOIN
    reviews ON reviews.reviewer_id = reviewers.id
        INNER JOIN
    series ON reviews.series_id = series.id;

-- views, models
SELECT title, released_year, genre, rating, first_name, last_name from reviews 
inner join series on reviews.series_id = series.id
inner join reviewers on reviews.reviewer_id = reviewers.id;

CREATE view full_reviews as 
SELECT title, released_year, genre, rating, first_name, last_name from reviews 
inner join series on reviews.series_id = series.id
inner join reviewers on reviews.reviewer_id = reviewers.id;

show tables;

SELECT * from full_reviews;

SELECT * from full_reviews where genre = 'Animation';

SELECT genre, avg(rating) from full_reviews 
group by genre;

drop view full_reviews;

SELECT * from series;

CREATE view ordered_series as 
select * from series order by released_year;

SELECT * from ordered_series;

INSERT into ordered_series (title, released_year, genre) values('The Great', 2020, 'Comedy');

DELETE  from ordered_series where title = 'The Great';

CREATE OR REPLACE  view ordered_series as 
select * from series order by released_year DESC;

alter view ordered_series as
select * from series order by released_year;

SELECT title,
	avg(rating),
	count(rating)
from full_reviews
group by title
having count(rating) > 1;

SELECT  title,
		avg(rating)
	from full_reviews 
group by title WITH ROLLUP;

SELECT  title,
		count(rating)
	from full_reviews 
group by title WITH ROLLUP;

SELECT  first_name,
		released_year,
		genre,
		avg(rating)
from full_reviews
group by released_year, genre, first_name WITH ROLLUP;

SELECT @@GLOBAL.sql_mode;
SELECT @@SESSION.sql_mode;

SET GLOBAL sql_mode = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
SET SESSION sql_mode = '...';

SELECT 3/0;

show warnings;

desc reviews;

INSERT into reviews(rating) values ('hi');

SET SESSION sql_mode = '';
SELECT @@SESSION.sql_mode;

show warnings;

SELECT * FROM reviews;

SELECT title, avg(rating) FROM series
JOIN reviews ON reviews.series_id = series.id
GROUP BY title;

SET SESSION sql_mode = '';

SELECT title, rating FROM series
JOIN reviews ON reviews.series_id = series.id
GROUP BY title; -- error;

SELECT date('2010-01-00');

SET SESSION sql_mode = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';

SELECT date('2010-01-00');

create table dates (d date);

INSERT into dates (d) values('2023-11-00');

SELECT * from dates;

-- window functions

CREATE TABLE employees (
    emp_no INT PRIMARY KEY AUTO_INCREMENT,
    department VARCHAR(20),
    salary INT
);

SELECT * from employees;

INSERT INTO employees (department, salary) VALUES
('engineering', 80000),
('engineering', 69000),
('engineering', 70000),
('engineering', 103000),
('engineering', 67000),
('engineering', 89000),
('engineering', 91000),
('sales', 59000),
('sales', 70000),
('sales', 159000),
('sales', 72000),
('sales', 60000),
('sales', 61000),
('sales', 61000),
('customer service', 38000),
('customer service', 45000),
('customer service', 61000),
('customer service', 40000),
('customer service', 31000),
('customer service', 56000),
('customer service', 55000);

SELECT department, avg(salary) from employees group by department;

SELECT  emp_no,
		department, 
		salary,
		AVG(salary) OVER(PARTITION BY department) AS dept_avg FROM employees;


SELECT AVG(salary) from employees; 

SELECT AVG(salary) OVER() from employees; 

SELECT  emp_no,
		department, 
		salary,
		AVG(salary) OVER() AS dept_avg FROM employees;

SELECT  emp_no,
		department, 
		salary,
		MIN(salary) OVER(),
		MAX(salary) OVER()
FROM employees;

SELECT
		MIN(salary),
		MAX(salary)
FROM employees;

SELECT emp_no, department, salary, avg(salary) OVER(PARTITION BY department) dept_avg from employees;

SELECT department, avg(salary) from employees group by department;

SELECT  emp_no,
		department,
		salary,
		avg(salary) OVER(PARTITION BY department) dept_avg,
		avg(salary) OVER() company_avg
from employees;

SELECT  emp_no,
		department,
		salary,
		count(*) over(PARTITION by department) as dept_count
from employees;

SELECT  emp_no,
		department,
		salary,
		sum(salary) OVER(PARTITION by department) dept_salary,
		sum(salary) OVER() total_salary
from employees;

SELECT 
		emp_no,
		department,
		salary,
		sum(salary) OVER(PARTITION by department order by salary DESC) rolling_dept_salary,
		sum(salary) OVER(PARTITION by department) as dept_salary_total
from employees;

SELECT 
		emp_no,
		department,
		salary,
		min(salary) OVER(PARTITION by department order by salary) as rolling_min
from employees;

SELECT 
		emp_no,
		department,
		salary,
		RANK() OVER(PARTITION BY department order by salary DESC) as dept_salary_rank,
		RANK() OVER(ORDER BY salary DESC) as overall_salary_rank
from employees;

SELECT 
		emp_no,
		department,
		salary,
		ROW_NUMBER() OVER(PARTITION BY department order by salary DESC) as dept_row_number,
		RANK() OVER(PARTITION BY department order by salary DESC) as dept_salary_rank,
		RANK() OVER(ORDER BY salary DESC) as overall_salary_rank,
		DENSE_RANK() OVER(ORDER BY salary DESC) as overall_rank,
		ROW_NUMBER() OVER(ORDER BY salary DESC) as overall_number
from employees;

SELECT 
		emp_no,
		department,
		salary,
		NTILE(4) over(partition by department ORDER by salary desc) as dept_salary_quartile,
		NTILE(4) over(ORDER by salary desc) as salary_quartile
from employees;

SELECT 
		emp_no,
		department,
		salary,
		FIRST_VALUE(emp_no) OVER(PARTITION by department order by salary DESC) as highest_paid_dept,
		FIRST_VALUE(emp_no) OVER(ORDER by salary DESC) as highest_paid_overall
from employees;

SELECT 
		emp_no,
		department,
		salary,
		salary - LEAD (salary) over(order by salary DESC) as salary_diff
from employees;

SELECT 
		emp_no,
		department,
		salary,
		salary - LAG (salary) over(order by salary DESC) as salary_diff
from employees;

SELECT 
		emp_no,
		department,
		salary,
		salary - LAG (salary) over(PARTITION by department order by salary DESC) as dept_salary_diff
from employees;

SELECT 
		emp_no,
		department,
		salary,
		LAG (salary, 2) over(PARTITION by department order by salary DESC) as dept_salary_diff
from employees;


-- instagram database clone

drop database ig_clone;
create database ig_clone;

use ig_clone;

CREATE table users(
	id integer auto_increment primary key,
	username varchar(255) unique not null,
	created_at timestamp default now()
);

drop table users;
drop table photos;
drop table comments;
drop table likes;
drop table photo_tags;
drop table follows;



INSERT into users(username) values('BlueTheCat'), ('CharlieBrown'), ('SiriJohn');

CREATE table photos(
	id integer auto_increment primary key,
	image_url varchar(255) not null,
	user_id integer not null,
	created_at timestamp default now(),
	foreign key(user_id) references users(id)
);

show tables;

describe photos;

INSERT into photos(image_url, user_id) values('adfs1', 1), ('asdf2', 2), ('asdfs3',3);

SELECT * from photos;

SELECT photos.image_url, users.username from photos
join users on photos.user_id = users.id;

CREATE table comments(
	id integer auto_increment primary key,
	comment_text varchar(255) not null,
	user_id integer not null,
	photo_id integer not null,
	created_at timestamp default now(),
	foreign key(user_id) references users(id),
	foreign key(photo_id) references photos(id)
);

show tables;

INSERT into comments (comment_text, user_id, photo_id) values ('Meow!', 1, 2), ('Amazing shot!!', 3, 2), ('I <3 This!', 2, 1);

SELECT * from comments;

create table likes(
	user_id integer not null,
	photo_id integer not null,
	created_at timestamp default now(),
	foreign key(user_id) references users(id),
	foreign key(photo_id) references photos(id),
	primary key(user_id, photo_id)
);

show tables;

INSERT into likes(user_id, photo_id) values(1,1), (2,1), (1,2), (1,3), (3,3);

SELECT * from likes;

CREATE TABLE follows (
    follower_id INTEGER NOT NULL,
    followee_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(follower_id) REFERENCES users(id),
    FOREIGN KEY(followee_id) REFERENCES users(id),
    PRIMARY KEY(follower_id, followee_id)
);

show tables;


INSERT into follows(follower_id, followee_id) values(1,2), (1,3), (3,1), (2,3);

SELECT * from follows;

CREATE TABLE tags (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(255) UNIQUE,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photo_tags (
    photo_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    FOREIGN KEY(tag_id) REFERENCES tags(id),
    PRIMARY KEY(photo_id, tag_id)
);

INSERT into tags(tag_name) values ('adorable'), ('cute'), ('sunrise');

SELECT * from tags;

INSERT into photo_tags(photo_id, tag_id) values(1,1), (1,2), (2,3), (3,2);

SELECT * from photo_tags;

DELETE from photo_tags;

show tables;

SELECT * from users order by created_at LIMIT 5;

-- most popular registration date

select DAYNAME(created_at) as dayname, count(*) as total from users 
group by dayname
order by total desc
limit 2;

-- users who have never posted a photo

select username from users
left join photos on users.id = photos.user_id
where photos.id is null;

-- most popular photo (and user who created it)

SELECT username, photos.id, photos.image_url, count(*) as total from photos 
inner join likes 
	on likes.photo_id = photos.id
inner join users 
	on photos.user_id = users.id
group by photos.id
order by total desc
limit 1;

-- avg number of photos per user

SELECT 
	(SELECT count(*) from photos) / (SELECT count(*) from users);

-- most popular hashtags

SELECT tags.tag_name, count(*) as total from photo_tags
join tags
	on photo_tags.tag_id = tags.id
group by tags.id
order by total DESC
limit 5;
	
-- finding bots - users who have liked every single photo

SELECT username, user_id, count(*) as num_likes from users 
inner join likes 
	on users.id = likes.user_id
group by likes.user_id
HAVING  num_likes = (SELECT COUNT(*) from photos);
