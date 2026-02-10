create table doctors(doctorId int primary key,doctorName varchar not null,specialization varchar not null)

create table appointments(appointmentId int primary key,doctorId int not null,patientName varchar not null,appointmentDate varchar not null, foreign key(doctorId) references doctors(doctorId))

insert into doctors values(1,'Dr.Aravind','Cardiology')
insert into doctors values(2,'Dr.Meena','Dermatology')

insert into appointments values(101,1,'Kumar','2020-02-11')
insert into appointments values(102,2,'Priya','2020-02-11')

select * from doctors
select * from appointments