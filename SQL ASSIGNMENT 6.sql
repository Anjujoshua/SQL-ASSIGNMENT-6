#data base name is country_people
create database country_people;
use country_people;
-- create a table country

create table country(Id int, Country_name varchar(30) ,Population int not null,
 Area varchar(30)not null);
 
 -- insert  10 rows
 insert into country(Id, country_name,population,Area)
 values( 1, 'china', 1500000, 'shanghai'),
 (2, 'us', 600000, 'phoenix'),
 (3,'uk', 1000000,'king'),
 (4,'india',900000,'gujarat'),
 (5,'null',650000,'tehran'),
 (6,'japan',120000,'hiroshima'),
 (7,'belgium',800000,'charleroi'),
 (8,'chile',700000,'arica'),
 (9,'canada',300000,'toronto'),
 (10,'egypt',500000,'israel');
 
-- create a table persons

create table persons( Id int, Fname varchar(15)not null, Lname varchar(15) ,
 Population int not null, Rating int ,Country_Id int not null, 
 Country_name varchar(15) );
 
 insert into persons (Id, fname,Lname,population,Rating,Country_Id,Country_name)
 values(11,'jo','joseph',1500000,4.3,101,'china'),
 (12,'alan','jeo', 600000, 4.6,102,'us'),
 (13,'joshua','alby',1000000,3.7,103,'uk'),
 (14,'sam','jon',900000,3.9,104,'india'),
 (15,'john','peter',650000,3,105,'null'),
 (16,'lilly','mathew',120000,3.4,106,'japan'),
 (17,'jose', 'jerry',800000,4,107,'belgium'),
 (18,'patty','jim',700000,2.9,108,'chile'),
 (19,'jom','jithi',300000,4.9,109,'canada'),
 (20,'anju','jerome',500000,3.1,110,'egypt');
 
-- Perform inner join, Left join, and Right join on the tables.
-- inner join

SELECT p.Id, p.fname, p.lname, c.country_name FROM persons p
INNER JOIN country c ON p.Country_Id = c.Id;

-- Left join

SELECT p.Id, p.fname, p.lname, c.country_name FROM persons p
LEFT JOIN country c ON p.Country_Id = c.Id;

-- right join

SELECT p.Id, p.fname, p.lname, c.country_name FROM persons p
RIGHT JOIN country c ON p.Country_Id = c.Id;


-- List all distinct country names from both the Country and Persons tables.

SELECT DISTINCT country_name FROM country UNION SELECT DISTINCT Country_name 
FROM persons;


-- List all country names from both the Country and Persons tables, including duplicates
select country_name from country union all select country_name from persons ;


-- Round the ratings of all persons to the nearest integer in the Persons table.
SELECT Id, fname, lname, population, ROUND(Rating) AS Rounded_Rating, Country_Id, Country_name
FROM persons;


