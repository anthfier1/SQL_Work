use foreignkeytest;

select * from parent, child 
where  parent.id = child.parent_id ;

select * from child;
select * from parent;

delete from parent 
where id = 1;
