create table employee(empId int primary key, empName varchar not null, salary decimal not null)

create procedure employeeOptions(choice int, employeeId int, employeeName varchar, employeesalary decimal)
language plpgsql
as $$
begin
case choice
when 1 then insert into employee(empId,empName, salary)values(employeeId,employeeName, employeeSalary);
when 2 then update employee set salary = employeeSalary where empId = employeeId;
when 3 then delete from employee where empId = employeeId;
when 4 then 
select * from employee;
when 5 then select 'Exiting Employee Management system';
end case;
end
$$

create or replace function Insert_minimum_Salary()
returns trigger
language plpgsql
as $$
begin
if new.salary < 10000.00 then
new.salary := 10000.00;
end if;
return new;
end
$$

create trigger insert_employee
before insert on employee
for each row
execute function Insert_minimum_Salary();

create or replace function update_minimum_Salary()
returns trigger
language plpgsql
as $$
begin
if new.salary < 10000.00 then
raise notice 'Salary cannot be updated to less than 10000';
end if;
return new;
end
$$

create trigger update_employee
before update on employee
for each row
execute function update_minimum_Salary();