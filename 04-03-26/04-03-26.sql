create table employeeeee(emp_id int primary key,emp_name varchar not null);

create or replace function employee(employee_id int,employee_name varchar)
returns void
language plpgsql
as $$
begin
insert into employeeeee(emp_id, emp_name) values (employee_id ,employee_name);
end;
$$;

select employee(101,'Sulthan');
select employee(102,'Ishfaa');
select employee(103,'Hudha');

select * from employeeeee

rollback;

commit;