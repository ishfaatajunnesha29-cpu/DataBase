create table books(bookId int primary key,title varchar not null,available varchar check(available in('yes','no')) default 'yes')

create table borrow(borrowId int primary key, bookId int not null,foreign key (bookId) references books(bookId))

insert into books values(4,'Introduction to SQL')
insert into books values(2,'Data Structures in Java','no')

insert into borrow values(15,2)
insert into borrow values(22,4)

select * from books

select *from borrow