-- List salaries high to low without duplicate values
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC;

-- Find the highest 14th salary (removing duplicate values) - Oracle SQL
SELECT MIN(salary)
FROM (
    SELECT DISTINCT salary
    FROM employees
    ORDER BY salary DESC
)
WHERE ROWNUM <= 14;

-- Find the highest 14th salary (removing duplicate values) - PostgreSQL
SELECT MIN(salary) AS "14th Highest Salary"
FROM (
    SELECT DISTINCT salary
    FROM employees
    ORDER BY salary DESC
    LIMIT 14
) AS top_salaries;

-- Find the highest 14th salary (removing duplicate values) - Oracle SQL
SELECT salary AS "14th Highest Salary"
FROM (
    SELECT DISTINCT salary
    FROM employees
    ORDER BY salary DESC
    LIMIT 1 OFFSET 13
) AS subquery;

-- Find employee info who is making the 14th highest salary (without duplicates) - Oracle SQL
SELECT *
FROM employees
WHERE salary = (
    SELECT MIN(salary)
    FROM (
        SELECT DISTINCT salary
        FROM employees
        ORDER BY salary DESC
    )
    WHERE ROWNUM <= 14
);

-- Find employee info who is making the 14th highest salary (without duplicates) - PostgreSQL
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 13;
