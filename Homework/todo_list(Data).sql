use todo_list; 

insert into todo (description, deadline, completed, creator, date_updated, updater)
values ('Finish homework', '2022-04-03', false, 'Anthony Fierro', current_timestamp(), 'Anthony Fierro'),
	   ('Clean Room', '2022-03-29', false, 'Anthony Fierro', current_timestamp(), 'Anthony Fierro'),
	   ('Laundry', '2022-04-01', false, 'Anthony Fierro', current_timestamp(), 'Anthony Fierro'),
       ('Grocery Shopping', '2022-04-03', false, 'Anthony Fierro', current_timestamp(), 'Anthony Fierro'),
	   ('Finish classswork', '2022-03-28', false, 'Anthony Fierro', current_timestamp(), 'Anthony Fierro'); 

update todo set completed = true
where ID = 1;

update todo set completed = true
where ID = 5;

update todo set updater = 'John Doe'
where ID = 4;

update todo set deadline = '2022-03-30 23:59:59'
where ID = 3;


