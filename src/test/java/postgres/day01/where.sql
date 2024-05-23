-- Retrieve first name, last name, and phone number of employees named David Austin
SELECT first_name, last_name, phone_number
FROM employees
WHERE first_name = 'David' AND last_name = 'Austin';

-- Retrieve all information of employees earning more than 7000 salary
SELECT * FROM employees
WHERE salary > 7000;

-- Retrieve email and salary of employees earning less than 4000
SELECT email, salary FROM employees
WHERE salary < 4000;

-- Retrieve all information of employees working as IT_PROG or SA_REP
SELECT * FROM employees
WHERE job_id IN ('IT_PROG', 'SA_REP');

-- Retrieve first name, last name, and salary of employees earning between 5000 and 10000
SELECT first_name, last_name, salary
FROM employees
WHERE salary BETWEEN 5000 AND 10000;

-- Retrieve all information of employees with employee_id between 130 and 170
SELECT *
FROM employees
WHERE employee_id BETWEEN 130 AND 170;

-- Retrieve all information of employees with specific employee_ids
SELECT *
FROM employees
WHERE employee_id IN (135, 176, 154, 129);

-- Retrieve city where country_id is 'US'
SELECT city, country_id
FROM locations
WHERE country_id = 'US';

-- Retrieve city where country_id is 'CA' or 'US'
SELECT city, country_id
FROM locations
WHERE country_id IN ('CA', 'US');
