create table busSeat(seatId int primary key,busNumber varchar not null,seatNumber varchar not null,isbooked varchar check(isbooked in('yes','no'))default 'yes')

insert into busSeat values(1,'TN45A1234','A1')
insert into busSeat values(2,'TN45A1234','A2','no')

select * from busSeat