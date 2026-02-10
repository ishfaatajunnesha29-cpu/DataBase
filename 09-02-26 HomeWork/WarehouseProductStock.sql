create table products(productId int primary key,productName varchar not null,stock int check(stock>=0),stockLevel int default 10 check(stockLevel>=0))

insert into products values(1,'Laptop',25)
insert into products values(2,'SmartPhone',50,5)

select * from products