-- Task 1: Retrieve all employees along with their department names.

select e.*, d.DEPARTMENT_NAME
from EMPLOYEES e
join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- Task 2: Retrieve all employees who work in the 'Sales' department.
select *
from EMPLOYEES
where DEPARTMENT_ID = (
    select DEPARTMENT_ID
    from DEPARTMENTS
    where DEPARTMENT_NAME = 'Sales'
);


-- Task 3: Retrieve the location details for the employee with the last name 'King'.

select l.*
from EMPLOYEES e
join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID
where e.LAST_NAME = 'King';


-- Task 4: Retrieve the country name for the location with the postal code '26192'.
select c.CountryName
from LOCATIONS l
join Countries c on l.COUNTRY_ID = c.CountryID
where l.POSTAL_CODE = '26192';

-- Task 5: Retrieve the total number of employees in each department.
select d.DEPARTMENT_NAME, count(*) as TotalEmployees
from EMPLOYEES e
join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
group by d.DEPARTMENT_NAME;

-- Task 6: Retrieve the average salary of employees in the 'IT' department.
select avg(SALARY) as AverageSalary
from EMPLOYEES
where DEPARTMENT_ID = (
    select DEPARTMENT_ID
    from DEPARTMENTS
    where DEPARTMENT_NAME = 'IT'
);

-- Task 7: Retrieve the department name and the highest salary within each department.
select d.DEPARTMENT_NAME, max(e.SALARY) as HighestSalary
from EMPLOYEES e
join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
group by d.DEPARTMENT_NAME;

--Task 8: Retrieve the employee details with the highest salary.
select *
from EMPLOYEES
where SALARY = (
    select max(SALARY)
    from EMPLOYEES
);

--Task 9: Retrieve the average salary for each country.
select c.CountryName, avg(e.SALARY) as AverageSalary
from EMPLOYEES e
join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID
join Countries c on l.COUNTRY_ID = c.CountryID
group by c.CountryName;

--Task 10: Retrieve the department name and the total number of employees who joined each department in the year 2005.
select d.DEPARTMENT_NAME, count(*) as TotalEmployeesJoined
from EMPLOYEES e
join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where e.HIRE_DATE >= '2005-01-01' and e.HIRE_DATE < '2006-01-01'
group by d.DEPARTMENT_NAME;




--Selecting Data:
--Write a SQL query to select all columns from the "Employees" table.
select * from employees;
--Filtering Data:
--Write a SQL query to select the first name and last name of employees who have a salary greater than $5,000.
select first_name, last_name from employees
where salary > 5000 ;

--Joining Tables:
--Write a SQL query to select the first name, last name, and department name of all employees along with their respective departments.
--Hint: You need to join the "Employees" table with the "Departments" table.
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;


--Aggregating Data:
--Write a SQL query to calculate the average salary of all employees.
--
--Sorting Data:
--Write a SQL query to select the first name, last name, and hire date of employees, sorted by hire date in descending order.
--
--Subqueries:
--Write a SQL query to select the first name, last name, and department name of employees who work in the 'IT' department.