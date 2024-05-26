-- Get unique job_ids
SELECT DISTINCT job_id FROM employees;

-- Get average salary for IT_PROG
SELECT AVG(salary)
FROM employees
WHERE job_id = 'IT_PROG';

-- Get average salary for each job_id
SELECT job_id, AVG(salary)
FROM employees
GROUP BY job_id;

-- Get job_ids where their average salary is more than 5k
SELECT job_id, AVG(salary), COUNT(*), SUM(salary)
FROM employees
GROUP BY job_id
HAVING AVG(salary) > 5000;

-- Get job_ids where their average salary is more than 5k (alternative approach)
SELECT job_id,  SUM(salary), COUNT(*), AVG(salary)
FROM employees
WHERE salary > 5000
GROUP BY job_id;

-- Find duplicate names in employees table
SELECT first_name, COUNT(*)
FROM employees
GROUP BY first_name
HAVING COUNT(*) > 1;

-- Order employees table by department_id
SELECT * FROM employees
ORDER BY department_id;
