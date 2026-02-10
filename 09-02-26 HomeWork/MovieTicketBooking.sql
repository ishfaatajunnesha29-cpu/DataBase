create table tickets(ticketId int primary key,movieName varchar not null,seatNumber int check(seatNumber between 1 and 100),price int default 150)

insert into tickets values(1,'Love&War',45,200)

select * from tickets