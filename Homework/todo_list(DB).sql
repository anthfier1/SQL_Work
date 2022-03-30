/*
Create a table to store a list of todo items. It should have the following columns:
primary key
description
deadline (by when should the task be completed)
completed flag (yes/no)
date created
who created the task 
date updated
who updated the task
Decide which temporal data types are most appropriate for your columns.

Insert sample data into your table to do the following:

Create a todo
Update a todo
*/

drop database if exists todo_list;
create database todo_list;
use todo_list;

create table todo(
ID int auto_increment primary key not null,
description varchar(250) not null,
deadline datetime not null,
completed bool not null,
date_created datetime default current_timestamp,
creator varchar(50) not null,
date_updated timestamp default current_timestamp on update current_timestamp,
updater varchar(50)
);