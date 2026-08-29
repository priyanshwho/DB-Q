create table students(
student_id serial primary key,
name varchar(20) not null
);

insert into students(name)
values
('raj'),
('dev'),
('abhi');

create table student_profiles(
student_id int primary key,
address text,
age int,
phone varchar(15)
);


insert into student_profiles(student_id,address,age, phone)
values
(1,'delhi',20,9999999999),
(2,'bihar',21,9999999998),
(3,'raipur',22,9999999997);

alter table student_profiles
add constraint fk_student_id
foreign key (student_id) 
references students(student_id);



select * from students;
select * from student_profiles;


select 
	s.student_id,
	s.name,
	sp,address,
	sp.age,
	sp.phone
	from students s join student_profiles sp
	on s.student_id=sp.student_id;

