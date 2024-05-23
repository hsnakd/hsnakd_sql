-- Get the highest salary
SELECT MAX(salary) FROM employees;

-- Highest salary employee information
SELECT * FROM employees
WHERE salary = 24000;

-- Subquery solution in one shot
SELECT * FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

-- Finding the second highest salary
-- Get the highest salary first
SELECT MAX(salary) FROM employees;

-- Highest after 24k
SELECT MAX(salary)
FROM employees
WHERE salary < 24000;

-- One-shot combining two queries
SELECT MAX(salary)
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

-- Employee information of who is making the second highest salary
SELECT *
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees WHERE salary < (SELECT MAX(salary) FROM employees));

-- List the employees who are making the top 10 salary
-- Oracle
SELECT *
FROM employees
WHERE rownum < 11
ORDER BY salary DESC;

-- PostgreSQL
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 10;

-- Order all employees based on salary high to low then display only the first 10 results
-- Oracle
SELECT *
FROM (SELECT * FROM employees ORDER BY salary DESC)
WHERE rownum < 11;

-- PostgreSQL
SELECT *
FROM (
    SELECT *
    FROM employees
    ORDER BY salary DESC
    LIMIT 10
) AS top_10_salaries;


