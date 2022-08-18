use bank;
show tables;
-- Q)26
select * from account;
select branch_name,avg(balance) from account group by branch_name;

-- Q)27
select * from depositor;
show columns from depositor;
select * from branch;
select account.branch_name , count(depositor.customer_name) from depositor,account group by account.branch_name;

-- Q)28
use bank;
select  distinct branch_name from account group by branch_name having avg(balance) >40000;

-- Q) 29

select * from account;
select avg(balance) from account;

-- Q) 30
select * from customer;
select * from branch;
select * from account;
select * from depositor;
select  * from customer as C left join depositor as D on C.customer_name=D.customer_name;

show columns from account;
show columns from depositor;
drop table depositor;
truncate table account;
show columns from branch;
delete from account where balance >10;

use bank;




delete from account where balance < (select avg(balance) from account);
-- Q) 50

