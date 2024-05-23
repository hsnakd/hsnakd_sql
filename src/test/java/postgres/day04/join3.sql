-- Retrieve all data from the employees table
SELECT * FROM employees;

-- Retrieve all data from the departments table
SELECT * FROM departments;

-- Retrieve all data from the locations table
SELECT * FROM locations;

-- Get the first name, last name, and department name for all employees where the department is not assigned
SELECT first_name, last_name, department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id
WHERE e.department_id IS NULL;

-- Explanation:
-- This query retrieves the first name, last name, and department name for all employees using a left join.
-- It includes employees who do not have a department assigned.

-- Get the first name, last name, department name, and city for all employees
SELECT first_name, last_name, department_name, city
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id;

-- Explanation:
-- This query retrieves the first name, last name, department name, and city for all employees using inner joins.

-- Get the first name, last name, department name, city, and country name for all employees
SELECT e.first_name, e.last_name, d.department_name, l.city, c.countryname
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.countryid;

-- Explanation:
-- This query retrieves the first name, last name, department name, city, and country name for all employees using inner joins.
-- It joins the employees, departments, locations, and countries tables to get the desired information.

-- Get the first name, last name, department name, and city for all employees (simplified version)
SELECT e.first_name, e.last_name, d.department_name, l.city
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id;
