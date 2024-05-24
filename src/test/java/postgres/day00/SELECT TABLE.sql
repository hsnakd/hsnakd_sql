-- Query to list all tables in the 'information_schema' schema
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'information_schema'
ORDER BY table_name;

-- Query to list all base tables in all schemas
SELECT table_schema, table_name
FROM information_schema.tables
WHERE table_type = 'BASE TABLE'
ORDER BY table_schema, table_name;

SELECT table_type, COUNT(*)
FROM information_schema.tables
GROUP BY table_type
ORDER BY table_type;

-- Query to get the count of each table type in the database
SELECT table_type, COUNT(*)
FROM information_schema.tables
GROUP BY table_type
ORDER BY table_type;

-- Query to list all tables along with their types in the database
SELECT table_schema, table_name, table_type
FROM information_schema.tables
ORDER BY table_schema, table_name;

-- Query to list all tables along with their types in the database, ordered by table_type
SELECT table_schema, table_name, table_type
FROM information_schema.tables
ORDER BY table_type, table_schema, table_name;


-- Explanation of table types:
-- BASE TABLE: Standard tables where data is stored.
-- VIEW: A virtual table based on the result-set of an SQL query.
-- MATERIALIZED VIEW: Stores the result-set of a query physically and can be refreshed periodically.
-- FOREIGN TABLE: Tables that use the Foreign Data Wrapper to access data stored outside of PostgreSQL.


-- Select all columns from the EMPLOYEES table
SELECT * FROM EMPLOYEES;

-- Select all columns from the DEPARTMENTS table
SELECT * FROM DEPARTMENTS;

-- Select all columns from the LOCATIONS table
SELECT * FROM LOCATIONS;

-- Select all columns from the COUNTRIES table
SELECT * FROM COUNTRIES;

-- Select all columns from the REGIONS table
SELECT * FROM REGIONS;

-- Select all columns from the BOOKS table
SELECT * FROM BOOKS;

-- Select all columns from the ALLSTUDENTS table
SELECT * FROM ALLSTUDENTS;
