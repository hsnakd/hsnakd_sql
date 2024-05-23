-- Retrieve all data from the employees table
SELECT * FROM employees;

-- Retrieve all data from the departments table
SELECT * FROM departments;

-- Perform a left join to get the first name, last name, and department name of employees with matching department IDs
SELECT first_name, last_name, department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id;
