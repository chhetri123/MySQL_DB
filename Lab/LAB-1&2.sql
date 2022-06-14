create database Bank;
use Bank;

create table branch (
branch_name varchar(50),
branch_city varchar(20),
assets int,
primary key(branch_name)
);
create table customer (
customer_name varchar(20),
customer_street varchar(20),
customer_city varchar(20),
primary key(customer_name)
);

create table loan (
loan_number int,
branch_name varchar(20),
amount numeric(10,2),
primary key(loan_number)
);

create table borrower (
customer_name varchar(20),
loan_number int,
primary key(customer_name,loan_number),
foreign key(customer_name) references customer(customer_name),
foreign key(loan_number) references loan(loan_number)
);
create table account (
account_number int,
branch_name varchar(50),
balance decimal(10,2),
primary key(account_number)
);

create table depositor(
customer_name varchar(20),
account_number int,
primary key(customer_name,account_number)
);


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
show columns from account;

-- Q)17
alter table borrower add constraint foreign_constraint foreign key(customer_name) references customer(customer_name);
alter table depositor add  constraint foreign_cont foreign  key(account_number) references account(account_number);

-- Q)18
alter table depositor drop constraint foreign_cont;


-- Q)19
alter table customer add constraint unique_const unique(customer_name);

-- Q)20
alter table customer drop constraint unique_const;

-- Q)21
alter table account add primary key(account_number);
alter table depositor add constraint foreignDep_const foreign key(account_number) references account(account_number);

-- Data entry for Account 
insert into account  values(1654614500000001,"Lamachaur",100000);
insert into account  values(1654614500000002,"Amarsingh",200000);
insert into account  values(1654614500000003,"Bagar",300000);
insert into account  values(1654614500000004,"Prithivichowk",500000);
insert into account  values(1654614500000005,"Chipledhunga",600000);
insert into account  values(1654614500000006,"Mahendrapool",880000);
insert into account  values(1654614500000007,"Srijana Chowk",170000);
insert into account  values(1654614500000008,"Lakeside",145000);
insert into account  values(1654614500000009,"Damside",102000);
insert into account  values(1654614500000010,"Birauta",33000);

select * from account;

-- 	Data from loan
insert into loan  values(100001,"KTM",20000);
insert into loan  values(100002 ,"PKR",100000);
insert into loan  values(100003,"BRT",89200);
insert into loan  values(100004,"KTM",799600);
insert into loan  values(100005,"BRT",78900);
insert into loan  values(100006,"PKR",10000);
insert into loan  values(100007,"BRT",890000);
insert into loan  values(100008,"KTM",78000);
insert into loan  values(100009,"PKR",895033);

-- Data for customer

insert into customer  values("Nirajan Poudel","Bagar","Pokhara");
insert into customer  values("Basanta Subedi","Birauta","Pokhara");
insert into customer  values("Nawaraj Subedi","morog","Biratnagar");
insert into customer  values("Bikash Basaula","Itlegalli","Biratnagar");
insert into customer  values("Manish chheteri","Pulchowk","Kathmandu");
insert into customer  values("Manish Poudel","Bagbazar","Kathmandu");
insert into customer  values("Saroj Poudel","AmarSing","Pokhara");
insert into customer  values("Parash shrestha","Hattichowk","Chitwan");
insert into customer  values("Abhishek aryal","prithivi Chowk","Pokhara");

select * from customer;

-- Data for borrower;
insert into borrower  values("Nirajan Poudel",100001);
insert into borrower  values("Basanta Subedi",100002);
insert into borrower  values("Nawaraj Subedi",100003);
insert into borrower  values("Bikash Basaula",100004);
insert into borrower  values("Manish chheteri",100005);
insert into borrower  values("Manish Poudel",100006);
insert into borrower  values("Saroj Poudel",100007);
insert into borrower  values("Parash shrestha",100008);
insert into borrower  values("Abhishek aryal",100009);

select * from borrower;
-- Data for Branch
insert into branch  values(8950,"Kathmandu",20000000);
insert into branch  values(8920 ,"Pokhara",100000000);
insert into branch  values(790,"Biratnagar",8920000);
insert into branch  values(1108,"Kathmandu",79960000);
insert into branch  values(963,"Biratnagar",7890000);
insert into branch  values(8901,"Pokhara",10000000);
insert into branch  values(1899,"Biratnagar",89000000);
insert into branch  values(8900,"Kathamandu",7800000);
insert into branch  values(8700,"Pokhara",89503000);


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

select * from depositor;






