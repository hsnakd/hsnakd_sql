select * from Employees;

select * from Address;

select * from Departments;

select * from Employees
where ID between 10 and 20;


select * from Employees
where `Salary` = 92000;

select max(Salary) from Employees;


SELECT e1.*
FROM Employees e1
JOIN (
    SELECT MAX(salary) AS max_salary
    FROM Employees
) e2 ON e1.salary = e2.max_salary;

/* 19	Oliver	Harris	Marketing Director	92000	4	9 */

select * from Employees
select max(salary) from Employees;


select salary from Employees
where salary between 50000 and 55000;
