-- Task 1: Retrieve all employees along with their department names.

select e.*, d.DEPARTMENT_NAME
from EMPLOYEES e
join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- Task 2: Retrieve all employees who work in the 'Sales' department.
SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT_ID = (
    SELECT DEPARTMENT_ID
    FROM DEPARTMENTS
    WHERE DEPARTMENT_NAME = 'Sales'
);


-- Task 3: Retrieve the location details for the employee with the last name 'King'.

SELECT l.*
FROM EMPLOYEES e
JOIN DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
JOIN LOCATIONS l ON d.LOCATION_ID = l.LOCATION_ID
WHERE e.LAST_NAME = 'King';


-- Task 4: Retrieve the country name for the location with the postal code '26192'.
SELECT c.CountryName
FROM LOCATIONS l
JOIN Countries c ON l.COUNTRY_ID = c.CountryID
WHERE l.POSTAL_CODE = '26192';

-- Task 5: Retrieve the total number of employees in each department.
SELECT d.DEPARTMENT_NAME, COUNT(*) AS TotalEmployees
FROM EMPLOYEES e
JOIN DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_NAME;

-- Task 6: Retrieve the average salary of employees in the 'IT' department.
SELECT AVG(SALARY) AS AverageSalary
FROM EMPLOYEES
WHERE DEPARTMENT_ID = (
    SELECT DEPARTMENT_ID
    FROM DEPARTMENTS
    WHERE DEPARTMENT_NAME = 'IT'
);

-- Task 7: Retrieve the department name and the highest salary within each department.
SELECT d.DEPARTMENT_NAME, MAX(e.SALARY) AS HighestSalary
FROM EMPLOYEES e
JOIN DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_NAME;

--Task 8: Retrieve the employee details with the highest salary.
SELECT *
FROM EMPLOYEES
WHERE SALARY = (
    SELECT MAX(SALARY)
    FROM EMPLOYEES
);

--Task 9: Retrieve the average salary for each country.
SELECT c.CountryName, AVG(e.SALARY) AS AverageSalary
FROM EMPLOYEES e
JOIN DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
JOIN LOCATIONS l ON d.LOCATION_ID = l.LOCATION_ID
JOIN Countries c ON l.COUNTRY_ID = c.CountryID
GROUP BY c.CountryName;

--Task 10: Retrieve the department name and the total number of employees who joined each department in the year 2005.
SELECT d.DEPARTMENT_NAME, COUNT(*) AS TotalEmployeesJoined
FROM EMPLOYEES e
JOIN DEPARTMENTS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE e.HIRE_DATE >= '2005-01-01' AND e.HIRE_DATE < '2006-01-01'
GROUP BY d.DEPARTMENT_NAME;




