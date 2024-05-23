-- Retrieve employee details including employee ID, first name, last name, and department ID from the employees table
SELECT employee_id, first_name, last_name, department_id FROM employees;

-- Explanation:
-- This query retrieves basic employee information from the employees table.

-- Retrieve employee details along with their manager's details
SELECT e1.employee_id, e1.first_name, e1.last_name, e1.department_id,
       e2.employee_id AS manager_id, e2.first_name AS manager_first_name, e2.last_name AS manager_last_name
FROM employees e1
LEFT JOIN employees e2 ON e1.manager_id = e2.employee_id
ORDER BY e1.employee_id;

-- Explanation:
-- This query retrieves employee details along with their manager's details by performing a left join on the employees table.
-- It joins the employees table with itself using the manager_id column to match employees with their managers.
-- The LEFT JOIN ensures that all employees are included, even those who do not have a manager (e.g., top-level managers).
-- The result set includes employee ID, first name, last name, department ID, manager's ID, manager's first name, and manager's last name.
-- The result is ordered by the employee ID.
