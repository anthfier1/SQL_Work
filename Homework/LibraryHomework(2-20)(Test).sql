use library;

select book.title, author.firstName, author.lastName from book
	inner join author where book.author_id = author.id;

select book.title, publisher.publisher from book 
	inner join publisher on book.publisher_id = publisher.id;
    
select book.title, subject.title from book 
	inner join subject on book.subject_id = subject.id
    where subject.id = 2;
    
SELECT book.title, author.firstName, author.lastName from book 
	inner join author on book.author_id = author.id
    where author.id = 101;
    
SELECT book.title, author.firstName, author.lastName from book 
	inner join author on book.author_id = author.id
    where author.id = 201;
    
SELECT book.title, author.firstName, author.lastName from book 
	inner join author on book.author_id = author.id
    where author.id = 301;
