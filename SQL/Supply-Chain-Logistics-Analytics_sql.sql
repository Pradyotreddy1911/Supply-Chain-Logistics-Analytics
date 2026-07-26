create database srh;
use srh;

create table students(
id int,
name varchar(50)
);

create table subjects(
id int,
subject varchar(50)
);

insert into students(id,name) values
(101,"himay"),
(102,"rahul"),
(105,"pradyot");


-- (103,"rohith"),
-- (104,"kalesh"),

drop table students;
insert into subjects(id,subject) values
(101,"os"),
(102,"cn"),
(103,"bda"),
(104,"de"),
(105,"dm");
drop table subjects;

select *
from students 
left join subjects
on students.id=subjects.id
where subjects.id is null
union
select *
from students
right join subjects
on students.id=subjects.id
where students.id is null;


