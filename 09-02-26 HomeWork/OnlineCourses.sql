create table courses(courseId int primary key,courseName varchar not null)

create table enrolments(enrolmentId int primary key,studentName varchar not null, courseId int not null,foreign key(courseId)references courses(courseId))

insert into courses values(1,'Python Programming')
insert into courses values(2,'Web Development')

insert into enrolments values(101,'Arjun',1)
insert into enrolments values(102,'Dhivya',2)

select * from courses

select * from enrolments