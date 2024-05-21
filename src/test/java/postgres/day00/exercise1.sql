SELECT * FROM Employees;
SELECT * FROM Address;
SELECT * FROM Departments;



SELECT * FROM Employees
WHERE salary = (SELECT MAX(salary) FROM Employees);

select max(salary) from Employees;
select min(salary) from Employees;
select sum(salary) from Employees;
select avg(salary) from Employees;


