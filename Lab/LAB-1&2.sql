create database Bank;
use Bank;
drop database bank;
create table branch (
branch_name varchar(50),
branch_city varchar(20),
assets int,
primary key(branch_name)
);
create table customer (
id int not null auto_increment,
customer_name varchar(20),
customer_street varchar(20),
customer_city varchar(20),
primary key(id,customer_name)
);

create table loan (
loan_number int,
branch_name varchar(20),
amount numeric(10,2),
primary key(loan_number)
);

create table borrower (
customer_name varchar(20) primary key,
loan_number int,
foreign key(customer_name) references customer(customer_name),
foreign key(loan_number) references loan(loan_number)
);
drop table borrower;
create table account (
account_number bigint(16),
branch_name varchar(50),
balance decimal(10,2),
primary key(account_number)
);
desc account;


create table depositor(
customer_name varchar(20),
account_number bigint(16),
primary key(customer_name,account_number)
);

drop table depositor;
-- Q)4 List all the tables of Bank Database 
show tables;

-- Q)5 all columns from tables 

show columns from branch;
show columns from customer;
show columns from loan;
show columns from borrower;
show columns from account;
show columns from depositor;

-- Q)6 
alter table branch add branch_manager varchar(20);
show columns from branch;

-- Q)7
alter table branch drop  branch_manager;
show columns from branch;

-- Q)8
alter table account modify balance int;

-- Q)9
alter  table customer modify customer_name varchar(30);


 -- Q)10
 alter table branch modify branch_city varchar(20) Not null;
--  alter table account modify account_number int8;

 
-- Q)11
alter table account alter balance set default 1000;

-- Q)12
alter table account alter balance drop default;
show columns  from account;

-- Q)13

alter table branch add constraint check_constrant Check(assets>10000000 and branch_name in("KTM","PKR","BRT"));

-- Q)14
alter table branch drop constraint check_constrant;

-- Q)15

alter table branch add  primary key(branch_name);
alter table customer add  primary key(customer_name);
alter table loan add  primary key(loan_number);
alter table account add  primary key(account_number);
show columns from branch;
show columns from customer;
show columns from loan;
show columns from account;

-- Q)16
alter table account drop primary key;
drop table borrower;
show columns from account;

-- Q)17
alter table borrower add constraint foreign_constraint foreign key(customer_name) references customer(customer_name);
alter table borrower add constraint foreign_constraint_loan foreign key(loan_number) references loan(loan_number) on delete cascade;
alter table depositor add  constraint foreign_cont foreign  key(account_number) references account(account_number);
desc customercustomer;

-- Q)18
alter table borrower drop constraint foreign_constraint_loan;


-- Q)19
alter table customer add constraint unique_const unique(customer_name);

-- Q)20
alter table customer drop constraint unique_const;

-- Q)21
alter table account add primary key(account_number);
alter table depositor add constraint foreignDep_const foreign key(account_number) references account(account_number) on delete cascade;
    alter table depositor drop constraint foreignDep_const;
    
    SET FOREIGN_KEY_CHECKS = 0;
       SET FOREIGN_KEY_CHECKS = 1;
-- Data entry for Account 
truncate account;
insert into account  values(1654614500000001,"Birauta",100000,1);
insert into account  values(1654614500000002,"Tinkune",200000,2);
insert into account  values(1654614500000003,"Bagar",300000,3);
insert into account  values(1654614500000004,"Tripureshwor",500000,4);
insert into account  values(1654614500000005,"Bharatpur",600000,5);
insert into account  values(1654614500000006,"Basantapur",880000.6);
insert into account  values(1654614500000007,"New Road",170000,7);
insert into account  values(1654614500000008,"Chipledhunga",145000,8);
insert into account  values(1654614500000009,"Galyang",102000,9);
insert into account  values(1654614500000010,"Kushma",33000,10);
insert into account values(1654614500000011,"Galyang",86900,11);
insert into account  values(1654614500000012,"Tripureshwor",45690,12);
insert into account  values(1654614500000016,"Tinkune",10690,12);
insert into account  values(1654614500000017,"Tinkune",58090,5);
insert into account  values(1654614500000013,"Kushma",12690,13);
insert into account  values(1654614500000014,"Bagar",75630,1);
insert into account  values(1654614500000015,"Chipledhunga",330959,1);

select * from account;

-- 	Data from loan
insert into loan  values(100001,"Baneshwor",289560);
insert into loan  values(100002 ,"Bagar",100099);
insert into loan  values(100003,"Tinkune",950289);
insert into loan  values(100004,"Bharatpur",799600);
insert into loan  values(100005,"Galyang",78900);
insert into loan  values(100006,"Chipledhunga",10000);
insert into loan  values(100007,"Kushma",890000);
insert into loan  values(100015,"Tinkune",980289);
insert into loan  values(100008,"Galyang",986000);
insert into loan  values(100009,"Tripureshwor",56933);
insert into loan  values(100010,"Chipledhunga",18562);
insert into loan  values(100011,"Kushma",990090);
insert into loan  values(100012,"Galyang",78000);
insert into loan  values(100013,"New Road",895033);
insert into loan  values(100014,"Tinkune",480289);
select * from loan;
-- Data for customer

insert into customer  values("Nirajan Poudel","Bagar","Pokhara",1);
insert into customer  values("Basanta Subedi","Birauta","Pokhara",2);
insert into customer  values("Nawaraj Subedi","Aadhikola","Syangja",3);
insert into customer  values("Bikash Basaula","Tinkune","Kathmandu",4);
insert into customer  values("Manish chhetri","Biratnagar","Chitwan",5);
insert into customer  values("Manish Poudel","kushma","Parbat",6);
insert into customer  values("Saroj Poudel","Bagbazzar","Kathmandu",7);
insert into customer  values("Parash shrestha","Hattichowk","Chitwan",8);
insert into customer  values("Abhishek aryal","Prithivi Chowk","Pokhara",9);
insert into customer  values("Aayush Shrestha","Hatemalo","Parbat",10);
insert into customer  values("Sulav Gaire","Tripureshwor","Kathmandu",11);
insert into customer  values("Albert Einstein","Jugle","Syangja",12);
insert into customer  values("Stephen Hawking","Sauraha","Chitwan",13);
desc customer;


-- Data for borrower;
insert into borrower  values("Nirajan Poudel",100001);
insert into borrower  values("Basanta Subedi",100002);
insert into borrower  values("Nawaraj Subedi",100003);
insert into borrower  values("Bikash Basaula",100004);
insert into borrower  values("Manish chhetri",100015);
insert into borrower  values("Manish Poudel",100006);
insert into borrower  values("Saroj Poudel",100007);
insert into borrower  values("Parash shrestha",100008);
insert into borrower  values("Abhishek aryal",100009);
insert into borrower  values("Aayush Shrestha",100010);
insert into borrower  values("Sulav Gaire",100011);
insert into borrower  values("Albert Einstein",100014);
insert into borrower  values("Stephen Hawking",100013);


select * from borrower;
-- Data for Branch
insert into branch  values("Birauta","Pokhara",20000000);
insert into branch  values("Tinkune","Kathmandu",100000000);
insert into branch  values("Bagar","Pokhara",8920000);
insert into branch  values("Tripureshwor","Kathmandu",79960000);
insert into branch  values("Baneshwor","Kathmandu",1160000);
insert into branch  values("Bharatpur","Chitwan",7890000);
insert into branch  values("Basantapur","Kathmandu",10000000);
insert into branch  values("New Road","Kathmandu",89000000);
insert into branch  values("Chipledhunga","Pokhara",7800000);
insert into branch  values("Galyang","Syangja",89503000);
insert into branch  values("Kushma","Parbat",5503990);

describe branch;
show tables;
select * from branch;
-- Data for Depositor
insert into depositor  values("Manish Chhetri",1654614500000001);
insert into depositor  values("Ramkumari Chhetri",1654614500000002);
insert into depositor  values("Hari Chhetri",1654614500000003);
insert into depositor  values("Pratik Chhetri",1654614500000004);
insert into depositor  values("Ozon wagle",1654614500000005);
insert into depositor  values("Nirajan Chhetri",1654614500000006);
insert into depositor  values("Nabin Subedi",1654614500000007);
insert into depositor  values("Sudharshan Acharya" ,1654614500000008);
insert into depositor  values("Sandip Chhetri",1654614500000009);
insert into depositor  values("Taranath Poudel",1654614500000010);
insert into depositor values("Aayush Shrestha",1654614500000011);
insert into depositor  values("Sulav Gaire",1654614500000012);
insert into depositor  values("Albert Einstein",1654614500000013);
insert into depositor  values("Stephen Hawking",1654614500000014);

select * from depositor;






