--how to find employees information of who is making highest salary in the company ?

--get me the highest salary 
select max(salary) from employees;

--highest salary employee information
select *
from employees
where salary = 24000;


--subquery solution in one shot 
select *
from employees
where salary = (select max(salary) from employees);

--finding second highest salary
--get highest salary first
select max(salary) from employees;

--highest after 24k 
select max(salary)
from employees
where salary <24000;

--one shot combining two queries

select max(salary)
from employees
where salary < (select max(salary) from employees);

--employee information of who is making second highest salary ? 
select * 
from employees
where salary = (select max(salary)from employees where salary < (select max(salary) from employees) );

----------
select * from employees;

select * from employees
order by salary desc;




-- Oracle
select *
from employees
where rownum < 11;

-- PostgreSQL
SELECT *
FROM employees
LIMIT 10;


--list the employees who is making top 10 salary
-- Oracle
select *
from employees
where rownum < 11
order by salary desc;

-- PostgreSQL
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 10;


--order all employees based on salary high to low then display only first 10 result
-- Oracle
select *
from (select * from employees order by salary desc)
where rownum < 11;

-- PostgreSQL
SELECT *
FROM (
    SELECT *
    FROM employees
    ORDER BY salary DESC
    LIMIT 10
) AS top_10_salaries;
