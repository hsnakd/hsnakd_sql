--find the highest 14th salary
--list salary high to low without duplicate values
select distinct salary 
from employees 
order by salary desc;

--find the highest 14th salary(removing duplicate values)
-- rownum is for Oracle SQL
select min(salary)
from (select distinct salary from employees order by salary desc)
where rownum <15;


--find the highest 14th salary (removing duplicate values)
-- There is no ROWNUM function in PostgreSQL, but we can achieve a similar function with the ROW_NUMBER() window function.
-- Also, we can select a certain number of rows using LIMIT statement in PostgreSQL.


SELECT MIN(salary) AS "14th Highest Salary"
FROM (
    SELECT DISTINCT salary
    FROM employees
    ORDER BY salary DESC
    LIMIT 14
) AS top_salaries;


--find the highest 14th salary(removing duplicate values)
-- rownum is for Oracle SQL
SELECT salary AS "14th Highest Salary"
FROM (
    SELECT DISTINCT salary
    FROM employees
    ORDER BY salary DESC
    LIMIT 1 OFFSET 13
) AS subquery;




--find employee info who is making 14th highest salary (without duplicates)
-- Oracle SQL
select *
from employees
where salary = (select min(salary)
                    from (select distinct salary from employees order by salary desc)
                                where rownum <15 );



--find employee info who is making 14th highest salary (without duplicates)
-- PostgreSQL
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 13;






