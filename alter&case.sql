-- to change clumn name, add new column, remove contraint like 
-- not null, change data type, add default value, remove default 
-- value, add primary key, remove primary key, add foreign key, 
-- remove foreign key, add unique constraint, remove unique constraint, 
-- add check constraint, remove check constraint


create table students
(
student_id serial primary key,
name varchar(100),
age bigint
);
insert into students(name,age)
values('raj',22),('jay',24)

alter table students
add column email varchar(50)


alter table students
drop column email


alter table students
add column email varchar(50) default 'not provided';
 
select * from students;



alter table students
rename column name to full_name

select * from students



alter table students
rename column name to full_name

select * from students




alter table students
alter column age type smallint;


alter table students
alter column age set default 18;


alter table students
alter column age drop default;

select * from students;



-- -----------------------------


alter table students
alter column age type smallint;


alter table students
alter column age set default 18;


alter table students
alter column age drop default;


alter table students 
add constraint age_check check(age>=0);

alter table students 
drop constraint students_pkey;

alter table students
rename to school_students;


select * from students;



