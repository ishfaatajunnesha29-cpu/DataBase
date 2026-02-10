create table plan(planId int primary key,planName varchar not null,fees int check(fees>0))

create table members(memberId int primary key,memberName varchar not null,planId int not null,foreign key (planId)references plan(planId))

insert into plan values(1,'Basic plan',500)
insert into plan values(2,'Premium plan',1200)

insert into members values(101,'Rahul',1)
insert into members values(102,'Anitha',2)

select * from plan

select * from members