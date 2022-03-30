DROP SCHEMA IF EXISTS books; 
CREATE SCHEMA books; 
use books;

DROP TABLE IF EXISTS book;
CREATE TABLE book (
	ID int primary key auto_increment,
    Author varchar(255) NOT NULL,
    Title varchar(255) NOT NULL,
    Subject varchar(255) NOT NULL,
    Summary varchar(10000),
    PublishedYear varchar(255)
);

DROP TABLE IF EXISTS subjects;
CREATE TABLE subjects (
subject varchar(255) NOT NULL
);