-- Rename columns using aliases
SELECT first_name AS "given_name", last_name AS "surname"
FROM employees;

-- Concatenate first_name and last_name to create a new column "full_name"
SELECT first_name || ' ' || last_name AS "full_name"
FROM employees;

-- Task: Add "@gmail.com" to emails and name the new column "full_email"
SELECT email || '@gmail.com' AS "full_email"
FROM employees;

-- Convert emails to lowercase and add "@gmail.com"
SELECT LOWER(email) || '@gmail.com' AS "full_email"
FROM employees;

-- Convert emails to uppercase and add "@gmail.com"
SELECT UPPER(email) || '@gmail.com' AS "full_email"
FROM employees;

-- Get first_name and its length, ordered by length in descending order
SELECT first_name, LENGTH(first_name) AS "length_name"
FROM employees
ORDER BY "length_name" DESC;

-- Get initials (first letter of first_name and last_name)
SELECT SUBSTR(first_name, 1, 1) || '.' || SUBSTR(last_name, 1, 1) AS "initials"
FROM employees;

-- Create a view named Emaillist_jamal
CREATE VIEW Emaillist_jamal AS
SELECT SUBSTR(first_name, 1, 1) || '.' || SUBSTR(last_name, 1, 1) AS "initials",
       first_name || ' ' || last_name AS "full_name",
       LOWER(email) || '@gmail.com' AS "full_email"
FROM employees;

-- Select from the created view
SELECT "full_name"
FROM Emaillist_jamal;

-- Drop the created view
DROP VIEW Emaillist_jamal;
