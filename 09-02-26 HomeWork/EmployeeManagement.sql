create table employees(employeeId int primary key,employeename varchar not null,designation varchar not null,salary int check(salary>=10000),status varchar default'Active')

insert into employees values(501,'Sharmila','Helper',15000)
insert into employees values(201,'Arun','Manager',45000)
insert into employees values(205,'MadhuMitha','Supervisor',40000)
insert into employees values(249,'Varshini','clerk',20000)

select * from employees