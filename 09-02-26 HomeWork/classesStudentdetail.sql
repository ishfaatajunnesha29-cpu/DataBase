create table classes(classId int primary key,className varchar not null)

create table studentdetail(studentId int primary key,studentName varchar not null,age int check(age>=5),classId int,foreign key(classId)references classes(classId))

select * from studentdetail
select * from classes

insert into classes values(1,'Section A')
insert into classes values(2,'Section B')
insert into classes values(3,'Section C')

insert into studentdetail values(101,'Thasli',7,2)
insert into studentdetail values(102,'Aashika',8,1)
insert into studentdetail values(103,'Reeshma',6,3)
insert into studentdetail values(104,'Raji',8,3)
insert into studentdetail values(105,'Dhivya',7,2)
insert into studentdetail values(106,'Carlin',6,1)
insert into studentdetail values(107,'Keerthi',6,4)