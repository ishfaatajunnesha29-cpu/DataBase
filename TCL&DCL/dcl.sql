create table employeess(empId int primary key, empName varchar not null,department varchar not null, salary decimal not null)

insert into employeess values(1,'Thasli','IT',70000.00),(2,'Aashika','Finance',60000.00),(3,'Dhivya','HR',50000.00)

create view employeesNames as select empName from employeess

grant select on employeesNames to guest