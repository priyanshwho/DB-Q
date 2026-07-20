create table students(
student_id serial primary key,
name varchar(20) not null
);

create table marks (
marks_id serial primary key,
student_id int,
subject varchar(50),
marks int,
foreign key(student_id) references students(student_id)
);

insert into students (name)
values
('raj'),
('dev'),
('jay');


insert into students (name)
values ('riya');


insert into marks (student_id,subject, marks)
values
(1,'eng',86),
(1,'math',85),
(1,'sci',84),

(2,'eng',76),
(2,'math',75),
(2,'sci',74),

(3,'eng',66),
(3,'math',65),
(3,'sci',64);


insert into marks (student_id,subject, marks)
values
(4,'eng',66),
(4,'math',65);

insert into marks (student_id, subject,marks)
values (5,'eng',34);

select s.name, m.subject, m.marks from students s full join marks m on s.student_id=m.student_id ;

select s.name, m.subject, m.marks from students s cross join marks m;



