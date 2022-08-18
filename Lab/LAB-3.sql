use bank;
show tables;

-- 2Q)
select * from branch;
-- 3Q)
select * from customer;

-- 4Q)
select * from loan;

-- 5Q)
select * from borrower;

-- 6Q)
select * from account;


-- 7Q)
select * from depositor limit 5;

-- 8Q)
select branch_name from loan;
select distinct branch_name  from loan;

-- 9Q)
select loan_number from loan where branch_name= "Tinkune" and amount> 200000;


-- 10Q)
select loan_number from loan where amount between 900000 and 1000000;

-- 11Q)

select customer_name,L.loan_number,amount from borrower as B ,loan as L where B.loan_number=L.loan_number;

-- 12Q)

select  customer_name ,loan_number,amount from loan natural join borrower where branch_name="KTM";

-- 13Q)
select branch_name ,branch_city,assets from branch where assets>some(select assets from branch where branch_city ="Kathmandu");

-- 14Q)

select customer_street from customer where customer_street like "%ba%";

-- 15Q)
select customer_street from customer where customer_street like "____%";
select * from branch;
-- 16Q)
select customer_street from customer where customer_street like "b%a";

-- 17Q)
select customer_name from borrower natural join loan as L where L.branch_name="KTM" order by customer_name asc ;

-- 18Q)
select * from loan order by amount desc, loan_number asc;

-- 19Q)
select * from account;
select * from loan;
select * from borrower;
select customer_name from loan ,account,borrower where loan.loan_number=borrower.loan_number;

-- 20Q)

select customer_name from loan , account,borrower ;
-- 21)



(select distinct customer_name ,count(*) from account join customer on account.customer_id=customer.id )
minus
(select distinct  customer_name from loan join borrower on loan.loan_number=borrower.loan_number);



