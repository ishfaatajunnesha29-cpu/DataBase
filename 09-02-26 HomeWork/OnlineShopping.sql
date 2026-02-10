create table customers(customerId int primary key,email varchar not null)

create table orders(orderId int primary key,customerId int not null,amount int check(amount>0),foreign key(customerId)references customers(customerId))

select * from customers

select * from orders

insert into customers values(111,'abc123@gmail.com')
insert into customers values(112,'abd463@gmail.com')

insert into orders values(21,112,550)
insert into orders values(33,111,400)