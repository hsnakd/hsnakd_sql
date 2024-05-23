-- reads all columns from the employees table
SELECT * FROM employees;

-- reads all columns from the departments table
SELECT * FROM departments;

-- gets only the first name from the employees table
SELECT first_name FROM employees;

-- displays city names from the locations table
SELECT city FROM locations;

-- gets first name, last name, and salary from the employees table
SELECT first_name, last_name, salary FROM employees;

-- gets street address and postal code from the locations table
SELECT street_address, postal_code FROM locations;

-- gets distinct first names from the employees table, removing duplicates
SELECT DISTINCT first_name FROM employees;


