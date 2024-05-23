-- Get all info for employees working as IT_PROG or SA_REP
SELECT * FROM employees
WHERE job_id IN ('IT_PROG', 'SA_REP');

-- Count employees working as IT_PROG or SA_REP
SELECT COUNT(*) FROM employees
WHERE job_id IN ('IT_PROG', 'SA_REP');

-- Count employees making more than 8000
SELECT COUNT(*) FROM employees
WHERE salary > 8000;

-- Count unique first names
SELECT COUNT(DISTINCT first_name) FROM employees;

-- Get all employees information ordered by salary (from highest to lowest)
SELECT * FROM employees
ORDER BY salary DESC;

-- Get all employees information ordered alphabetically by first name
SELECT * FROM employees
ORDER BY first_name;

-- Get employees whose first name starts with 'C'
SELECT * FROM employees
WHERE first_name LIKE 'C%';

-- Get employees with 5-letter first names where the middle character is 'z'
SELECT * FROM employees
WHERE first_name LIKE '__z__';

-- Get employees with first names where the second character is 'u'
SELECT * FROM employees
WHERE first_name LIKE '_u%';

-- Find minimum salary
SELECT MIN(salary) FROM employees;

-- Find maximum salary
SELECT MAX(salary) FROM employees;

-- Find average salary
SELECT AVG(salary) FROM employees;

-- Round average salary to two decimal places
SELECT ROUND(AVG(salary), 2) FROM employees;

-- Find total salary sum
SELECT SUM(salary) FROM employees;
