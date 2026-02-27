create table attendance(idd serial primary key,employeeId int,datee date,status text)

insert into attendance(employeeId,datee,status)values(101,'2026-02-20','Present')
insert into attendance(employeeId,datee,status)values(102,'2026-02-20','Absent')
insert into attendance(employeeId,datee,status)values(103,'2026-02-20','Present')
insert into attendance(employeeId,datee,status)values(104,'2026-02-20','Present')
insert into attendance(employeeId,datee,status)values(105,'2026-02-20','Late')


create or replace procedure employeeAttendance()
language plpgsql
as $$
declare 
rec Record;
absentCount int;
begin
for rec in select employeeId from attendance loop
select count(*) into absentCount from attendance 
where employeeId = rec.employeeId and status = 'Absent';
raise notice 'Employee % has % absent days',rec.employeeId,absentCount;
end loop;
end;
$$

create or replace function updateLatePresent()
returns void
language plpgsql
as $$
begin 
update attendance
set status = 'Present' where status = 'Late';
end;
$$

select employeeId,
count(case when status = 'Absent' then 1 end) as absentDays,
case
when count(case when status = 'Absent' then 1 end)<=2 then
'Good'
when count(case when status = 'Absent' then 1 end)between
3 and 5 then 'Average'
else 'Poor'
end as attendanceRecord from attendance
group by employeeId;

call employeeAttendance();

select updateLatePresent();

select * from attendance;


***********
create table bookss(booksId serial primary key,title text, author text, copies int,status text)

insert into bookss (title,author,copies,status)values('Wings of Fire','APJ Abdul kalam',2,'Limited')
insert into bookss (title,author,copies,status)values('My Experiments with Truth','Mahathma Gandhi',6,'Limited')
insert into bookss (title,author,copies,status)values('The Guide','RK Narayanan',0,'Out of Stock')

create or replace function bookIssued(bookId int)
returns void
language plpgsql
as $$
begin 
update bookss
set copies = copies - 1
where booksId = bookId and copies >0;
end;
$$

select bookIssued(1);


create or replace procedure Stock()
language plpgsql
as $$
declare
rec record;
begin
for rec in select booksId,copies from bookss loop
if rec.copies = 0 then update bookss
set status = 'Out of Stock' where booksId = rec.booksId;
end if;
end loop;
end;
$$

call stock();

select * from bookss;

select booksId, title, copies,
case
when copies > 5 then 'Available'
when copies between 1 and 5 then 'Limited'
else 'Out of Stock'
end as availability from bookss;

create or replace function checkAvailability(bookId int)
returns text
language plpgsql
as $$
declare 
checkk int;
begin
select copies into checkk from bookss where booksId = bookId;
if checkk>0 then return 'Available';
else return 'Not Available';
end if;
end;
$$

select checkAvailability(3);





















