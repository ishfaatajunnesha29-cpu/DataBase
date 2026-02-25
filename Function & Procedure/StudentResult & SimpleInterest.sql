create function totalMark(mark1 int, mark2 int, mark3 int)
returns int 
language plpgsql
as $$
declare
marks int := 0;
begin
marks := mark1+mark2+mark3;
return marks;
end;
$$;

create or replace procedure totals(mark1 int, mark2 int, mark3 int)
language plpgsql
as $$
declare
total int;
resultis text;
begin
total := totalMark(mark1,mark2,mark3);
if total >= 150 then
resultis := 'PASS';
else
resultis := 'FAIL';
end if;
raise notice 'Total Marks: %',total;
raise notice 'Result: %',resultis;
end;
$$;

call totals(45,60,75);

***********


create or replace function SIcalculation(p numeric,r numeric,t numeric)
returns numeric
language plpgsql
as $$
declare 
si numeric := 0;
begin
si := (p*r*t)/100;
return si;
end;
$$;


create or replace procedure SIresult(p numeric,r numeric,t numeric)
language plpgsql
as $$
declare
si numeric;
total numeric;
begin
si := SIcalculation(p,r,t);
total := p + si;
raise notice 'Principal Amount : %',p;
raise notice 'Simple Interest : %',si;
raise notice 'Total Amount : %',total;
end;
$$;

call SIresult(10000,5,2);
