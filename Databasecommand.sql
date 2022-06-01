SHOW databases ;
USE collage;
SHOW tables;
select * from department;
select * from instructor;
select * from customer;
select * from section;
select * from teaches;
select * from course;
select name from instructor; -- 
-- find the department name form instructor 
select dept_name from instructor;

select distinct dept_name from instructor;
-- top 5 record
select * from instructor limit 5;
-- find the name of all instructor in computer department who has salary greater than 70000

select name from instructor where  dept_name ="Computer" and salary>70000;

-- name a all instructor names along with their department names and department building name 
select name ,D.dept_name, building from department as D,instructor as I where D.dept_name=I.dept_name;

-- Retrive the instructor name and course ID of all courses taught by instructor 

select name ,course_id from instructor as I, teaches as T where I.ID=T.ID;

-- if you want to replace name attribute replaced with the instructor_name 

select name as Instructor_name ,course_id as CID from instructor as I, teaches as T where I.ID=T.ID;

-- FInd only instructor names and course id for instructor in the computer science department 

select name , course_id from instructor as I , teaches as T where I.ID=T.ID and I.dept_name="Computer";


-- find names of all instructor whose salary is greater than at least one instructor in electrical department ;
select T.name ,T.dept_name,T.salary from instructor as T, instructor as S where T.salary >S.salary and S.dept_name="Electrical";

-- name of all departments whose building name includes the substing "IC"
select dept_name , building from department where building like "%IC%";

-- find the name of student whose last name begin from "s"alter

select name from instructor where name like "%s";

-- find the department name of the student whose name has at laest five character

select name from instructor where name like "_____%";
-- find the list of all instructor name in alphabeticorder in the computer;
select name from instructor where dept_name ="Computer" order by name desc;

-- name of instructor with salary amount between 50000 and 90000
select name, salary from instructor  where salary between 50000 and 90000;

-- find the set of all course taught in the fall 201 semester

select course_id from section where semester="Second" and year=2019;
-- find the set of all course taught in the spring 2018 semester;
select * from section where semester="Fifth" and year=2020;

-- union relation operator

(select course_id from section where semester="Fifth" and year =2020)
union 
(select course_id from section where semester="Fifth" and year=2020);


-- intersect

(select course_id from section )
except
(select course_id from section where semester="Fifth" and year=2020);




select name from instructor where salary is null;

-- date and time in SQL
select now();
select curdate();
select curtime();

