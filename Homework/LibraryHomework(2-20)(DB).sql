drop schema if exists library;
create schema library;
use library;

create table `author`(
id int primary key not null,
`firstName` varchar(50), 
`lastName` varchar(50) not null
);

create table `publisher`(
`id` int primary key not null,
`publisher` varchar(75) not null
);

create table `subject` (
`id` int primary key,
`title` varchar(50) not null unique
);

create table `format` (
`id` int primary key,
`title` varchar(50) not null
);

create table `rating` (
`id` int primary key,
`title` varchar(50) not null
);

create table book (
	`id` int primary key auto_increment, -- primary key constraint
    `title` varchar(200) not null,
    `summary` varchar(5000),
    `author_id` int not null,
    `subject_id` int,
    `publisher_id` int,
    `year_published` year not null, -- not null constraint
    foreign key (`subject_id`) references subject (`id`),
    FOREIGN KEY (`author_id`)
        REFERENCES author(`id`)
        ON DELETE CASCADE,
	FOREIGN KEY (`publisher_id`)
        REFERENCES publisher(`id`)
        ON DELETE CASCADE
);

 create table movie (
	`id` int primary key auto_increment, -- primary key constraint
    `title` varchar(200) not null,
    `format_id` varchar(20),
    `year_released` year not null, -- not null constraint
    `4k` char(1) not null,
    `HD` char(1) not null,
    `rating_id` varchar(10),
    `subject_id` int,
    foreign key (`subject_id`) references subject (`id`)
); 


