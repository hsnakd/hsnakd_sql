--SQL Practice Tasks Part 2
--1. list the initials of all the employees
--2. list the full names of all employees ( fullname: Lastname FirstName)
--3. who has the longest name in the employees table?
--4. Show all employees who work in any one of these department id  90, 60, 100, 130, 120
--5. Show all employees who does not work in any one of these department id 90, 60,  100, 130, 120
--6. divide employees into groups by using their job id
--6.1 display the maximum salaries in each groups
--6.2 display the minimum salaries in each groups
--6.3 display the average salary of each group
--6.4 how many employees are there in each group that have minimum salary of 5000 ?
--6.5 display the total budgets of each groups
--7. display employees' full email addresses and full names
--    (assume that the domain of the email is @gmail)
--8. display full addresses from locations table in a single column
--    (full address: Street_Address,  CityName  ZipCode,  Country_id)

--Part 2 Solutions
--1
select substr(first_name, 0, 1)||substr(last_name,0,1) as "Initials" from employees;

--2.
select first_name||' '||last_name as "Full Name" from employees;


--3
select * from employees where length(first_name||' '||last_name) =
( select max( length(first_name||' '||last_name)) from employees );

--4
select * from employees where department_id in (90,60, 100, 130, 120);

--5
select * from employees where department_id not in (90,60, 100, 130, 120);


--6
select job_id from employees group by job_id;

--6.1
select job_id, max(salary) from employees group by job_id;

--6.2
select job_id, min(salary) from employees group by job_id;

--6.3
select job_id, avg(salary) from employees group by job_id;

--6.4
select job_id, count(*) from employees where salary >= 5000 group by job_id;

--6.5
select job_id, sum(salary) from employees group by job_id ;

--7.
select concat(email, '@gmail.com') as "Email Address" from employees;

--8.
select street_address||', '||city||' '||postal_code||', '||country_id
as "Full Address" from locations;