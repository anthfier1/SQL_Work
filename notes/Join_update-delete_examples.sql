use library;

-- cross join, full outer join
select * from book, subject;

-- implicit join
select * from book, subject
where book.subject_id = subject.id;

-- column alias
select book.title, book.author, subject.title as 'subject' from book, subject
where book.subject_id = subject.id;

-- table alias
select b.title, b.author, s.title as 'subject' 
from book b, subject s
where b.subject_id = s.id;

use library;

select * from subject;

-- rename Sports to Sports & Fitness
update subject 
set title = 'Sports & Fitness'
where title = 'Sports';

insert into subject (id, title) values (4, 'Horror');
select * from subject;

-- delete Horror subject
delete from subject 
where title = 'Horror';

delete from subject 
where id = 4;

/*

create 

insert (Create)
select (Read)
update (Update)
delete (Delete)

CRUD
normalization
JOINS
column/table aliases
*/