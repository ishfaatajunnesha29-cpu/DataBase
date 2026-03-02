create table bank_Account(accountId int primary key, accountHolder varchar not null, balance decimal not null)

insert into bank_Account values(1,'Taj',3000.00),(2,'Vishnu',5000.00),(3,'Gowsalya',4000.00)

begin
update bank_Account set balance = balance+1000 where accountId = 1;

select * from bank_Account

rollback

*******

create user guest with password 'taju123'

grant select on employeesNames to guest

select * from employeesNames

*******

