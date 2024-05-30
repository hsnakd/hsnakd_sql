select * from workers
select * from manager

-- Display manager name of 'Lex'
-- Step 1: Get the manager_id of 'Lex'
SELECT manager_id
FROM workers
WHERE first_name = 'Lex' AND last_name = 'De Haan';

-- Step 2: Use the manager_id to find the manager's name
SELECT first_name, last_name
FROM workers
WHERE empid = (
    SELECT manager_id
    FROM workers
    WHERE first_name = 'Lex' AND last_name = 'De Haan'
);


-- manager firstname and lastname for Lex
SELECT first_name, last_name
FROM workers
WHERE empid = (
    SELECT manager_id
    FROM workers
    WHERE first_name = 'Lex'
);

-- Display all employees with firstname, lastname, manager_id
SELECT empid, first_name, last_name, manager_id
FROM workers;

-- Display all employees and their managers
SELECT
    workers.first_name AS employee_firstname,
    workers.last_name AS employee_lastname,
    managers.first_name AS manager_firstname,
    managers.last_name AS manager_lastname
FROM workers AS workers
INNER JOIN workers AS managers
    ON workers.manager_id = managers.empid;

-- Where is STEVEN?

-- To see Steven
SELECT
    workers.first_name AS employee_firstname,
    workers.last_name AS employee_lastname,
    managers.first_name AS manager_firstname,
    managers.last_name AS manager_lastname
FROM workers AS workers
LEFT JOIN workers AS managers
    ON workers.manager_id = managers.empid
ORDER BY workers.first_name;

-- Select first name and last name where WORKERS.manager_id = MANAGER.employee_id
SELECT W.first_name, W.last_name
FROM workers W
JOIN manager M ON W.manager_id = M.employee_id;

-- TASK --> Given the Employee table, write a SQL query that finds out employees who earn more than their managers.
-- Assuming the EMPLOYEES table has a 'salary' column.
SELECT e1.first_name AS employee_firstname, e1.last_name AS employee_lastname
FROM workers e1
JOIN workers e2 ON e1.manager_id = e2.empid
WHERE e1.salary > e2.salary;
