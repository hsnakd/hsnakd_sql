-- Create the Departments table
CREATE TABLE DEPARTMENTS (
    DEPARTMENT_ID INT PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR(100),
    MANAGER_ID INT,
    LOCATION_ID INT
);

-- Create the Locations table
CREATE TABLE LOCATIONS (
    LOCATION_ID INT PRIMARY KEY,
    STREET_ADDRESS VARCHAR(100),
    POSTAL_CODE VARCHAR(20),
    CITY VARCHAR(100),
    STATE_PROVINCE VARCHAR(50),
    COUNTRY_ID VARCHAR(2)
);


-- Create the Employees table
CREATE TABLE EMPLOYEES (
    EMPLOYEE_ID INT PRIMARY KEY NOT NULL,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    EMAIL VARCHAR(100),
    PHONE_NUMBER VARCHAR(20),
    HIRE_DATE DATE,
    JOB_ID VARCHAR(20),
    SALARY DECIMAL(10, 2),
    DEPARTMENT_ID INT
);

-- Create the Countries table
CREATE TABLE COUNTRIES (
    CountryID VARCHAR(2) PRIMARY KEY,
    CountryName VARCHAR(100)
);

-- Insert data into Countries table
INSERT INTO COUNTRIES (CountryID, CountryName)
VALUES
    ('US', 'United States'),
    ('CA', 'Canada');

-- Insert data into DEPARTMENTS table
INSERT INTO DEPARTMENTS (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID)
VALUES
    (10, 'Administration', NULL, 1700),
    (20, 'Marketing', 100, 1800),
    (30, 'Purchasing', 102, 1700),
    (40, 'Human Resources', 203, 2400),
    (50, 'Shipping', 121, 1500),
    (60, 'IT', 103, 1400),
    (70, 'Public Relations', 204, 2700),
    (80, 'Sales', 145, 2500),
    (90, 'Executive', 100, 1700),
    (100, 'Finance', 108, 1700);

-- Inserting data into LOCATIONS table
INSERT INTO LOCATIONS (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID)
VALUES
    (1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'),
    (1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'),
    (1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
    (1800, '147 Spadina Ave Suite 300', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'),
    (2100, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
    (2500, '2034 Granville St', 'V6H 3J5', 'Vancouver', 'British Columbia', 'CA'),
    (2700, '8204 Arthur St', 'N6G 1T3', 'London', 'Ontario', 'CA');

-- Inserting data into EMPLOYEES table
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, DEPARTMENT_ID)
VALUES
    (100, 'Steven', 'King', 'steven.king@example.com', '515.123.4567', '2003-06-17', 'AD_PRES', 24000.00, 90),
    (101, 'Neena', 'Kochhar', 'neena.kochhar@example.com', '515.123.4568', '2005-09-21', 'AD_VP', 17000.00, 90),
    (102, 'Lex', 'De Haan', 'lex.dehaan@example.com', '515.123.4569', '2001-01-13', 'AD_VP', 17000.00, 90),
    (103, 'Alexander', 'Hunold', 'alexander.hunold@example.com', '590.423.4567', '2006-01-03', 'IT_PROG', 9000.00, 60),
    (104, 'Bruce', 'Ernst', 'bruce.ernst@example.com', '590.423.4568', '2007-05-21', 'IT_PROG', 6000.00, 60),
    (105, 'David', 'Austin', 'david.austin@example.com', '590.423.4569', '2005-06-25', 'IT_PROG', 4800.00, 60),
    (106, 'Valli', 'Pataballa', 'valli.pataballa@example.com', '590.423.4560', '2006-02-05', 'IT_PROG', 4800.00, 60),
    (107, 'Diana', 'Lorentz', 'diana.lorentz@example.com', '590.423.5567', '2007-02-07', 'IT_PROG', 4200.00, 60),
    (108, 'Nancy', 'Greenberg', 'nancy.greenberg@example.com', '515.124.4569', '2002-08-17', 'FI_MGR', 12008.00, 100),
    (109, 'Daniel', 'Faviet', 'daniel.faviet@example.com', '515.124.4169', '2002-08-16', 'FI_ACCOUNT', 9000.00, 100),
    (110, 'John', 'Chen', 'john.chen@example.com', '515.124.4269', '2005-09-28', 'FI_ACCOUNT', 8200.00, 100),
    (111, 'Ismael', 'Sciarra', 'ismael.sciarra@example.com', '515.124.4369', '2005-09-30', 'FI_ACCOUNT', 7700.00, 100),
    (112, 'Jose Manuel', 'Urman', 'jose.manuel.urman@example.com', '515.124.4469', '2006-03-07', 'FI_ACCOUNT', 7800.00, 100),
    (113, 'Luis', 'Popp', 'luis.popp@example.com', '515.124.4567', '2007-12-07', 'FI_ACCOUNT', 6900.00, 100),
    (114, 'Den', 'Raphaely', 'den.raphaely@example.com', '515.127.4561', '2002-12-07', 'PU_MAN', 11000.00, 30),
    (115, 'Alexander', 'Khoo', 'alexander.khoo@example.com', '515.127.4562', '2003-05-18', 'PU_CLERK', 3100.00, 30),
    (116, 'Shelli', 'Baida', 'shelli.baida@example.com', '515.127.4563', '2005-12-24', 'PU_CLERK', 2900.00, 30),
    (117, 'Sigal', 'Tobias', 'sigal.tobias@example.com', '515.127.4564', '2005-07-24', 'PU_CLERK', 2800.00, 30),
    (118, 'Guy', 'Himuro', 'guy.himuro@example.com', '515.127.4565', '2006-11-15', 'PU_CLERK', 2600.00, 30),
    (119, 'Karen', 'Colmenares', 'karen.colmenares@example.com', '515.127.4566', '2007-08-10', 'PU_CLERK', 2500.00, 30),
    (120, 'Matthew', 'Weiss', 'matthew.weiss@example.com', '650.123.1234', '2004-07-18', 'ST_MAN', 8000.00, 50),
    (121, 'Adam', 'Fripp', 'adam.fripp@example.com', '650.123.2234', '2005-04-10', 'ST_CLERK', 4500.00, 50),
    (122, 'Payam', 'Kaufling', 'payam.kaufling@example.com', '650.123.3234', '2003-05-01', 'ST_CLERK', 4300.00, 50),
    (123, 'Shanta', 'Vollman', 'shanta.vollman@example.com', '650.123.4234', '2005-10-10', 'ST_CLERK', 4000.00, 50),
    (124, 'Kevin', 'Mourgos', 'kevin.mourgos@example.com', '650.123.5234', '2007-11-16', 'ST_CLERK', 3900.00, 50),
    (125, 'Julia', 'Nayer', 'julia.nayer@example.com', '650.124.1234', '2005-07-16', 'ST_CLERK', 3200.00, 50),
    (126, 'Irene', 'Mikkilineni', 'irene.mikkilineni@example.com', '650.124.2234', '2006-09-28', 'ST_CLERK', 2700.00, 50),
    (127, 'James', 'Landry', 'james.landry@example.com', '650.124.3234', '2007-01-14', 'ST_CLERK', 2400.00, 50),
    (128, 'Steven', 'Markle', 'steven.markle@example.com', '650.124.4234', '2008-03-08', 'ST_CLERK', 2200.00, 50),
    (129, 'Laura', 'Bissot', 'laura.bissot@example.com', '650.124.5234', '2005-08-20', 'ST_CLERK', 3300.00, 50),
    (130, 'Mozhe', 'Atkinson', 'mozhe.atkinson@example.com', '650.124.6234', '2005-10-30', 'ST_CLERK', 2800.00, 50),
    (131, 'James', 'Marlow', 'james.marlow@example.com', '650.124.7234', '2005-02-16', 'ST_CLERK', 2500.00, 50),
    (132, 'TJ', 'Olson', 'tj.olson@example.com', '650.124.8234', '2007-04-10', 'ST_CLERK', 2100.00, 50),
    (133, 'Jason', 'Mallin', 'jason.mallin@example.com', '650.127.1234', '2004-06-14', 'SA_MAN', 12000.00, 80),
    (134, 'Michael', 'Rogers', 'michael.rogers@example.com', '650.127.2234', '2006-08-26', 'SA_MAN', 12000.00, 80),
    (135, 'Ki', 'Gee', 'ki.gee@example.com', '650.127.3234', '2007-12-12', 'SA_MAN', 12000.00, 80),
    (136, 'Hazel', 'Philtanker', 'hazel.philtanker@example.com', '650.127.4234', '2008-02-06', 'SA_MAN', 12000.00, 80),
    (137, 'Renske', 'Ladwig', 'renske.ladwig@example.com', '650.127.5234', '2003-07-14', 'SA_MAN', 10500.00, 80),
    (138, 'Stephen', 'Stiles', 'stephen.stiles@example.com', '650.127.6234', '2005-10-26', 'SA_MAN', 9000.00, 80),
    (139, 'John', 'Seo', 'john.seo@example.com', '650.127.7234', '2006-02-12', 'SA_MAN', 8200.00, 80),
    (140, 'Joshua', 'Patel', 'joshua.patel@example.com', '650.127.8234', '2006-04-06', 'SA_MAN', 7900.00, 80),
    (141, 'Trenna', 'Rajs', 'trenna.rajs@example.com', '650.121.1234', '2003-10-17', 'SA_REP', 6500.00, 80),
    (142, 'Curtis', 'Davies', 'curtis.davies@example.com', '650.121.2234', '2005-01-29', 'SA_REP', 6400.00, 80),
    (143, 'Randall', 'Matos', 'randall.matos@example.com', '650.121.3234', '2005-03-15', 'SA_REP', 6200.00, 80),
    (144, 'Peter', 'Vargas', 'peter.vargas@example.com', '650.121.4234', '2005-07-09', 'SA_REP', 6000.00, 80),
    (145, 'John', 'Russell', 'john.russell@example.com', '650.121.5234', '2004-10-01', 'SA_REP', 14000.00, 80),
    (146, 'Karen', 'Partners', 'karen.partners@example.com', '650.121.6234', '2005-01-05', 'SA_REP', 13500.00, 80),
    (147, 'Alberto', 'Errazuriz', 'alberto.errazuriz@example.com', '650.121.7234', '2005-03-10', 'SA_REP', 12000.00, 80),
    (148, 'Gerald', 'Cambrault', 'gerald.cambrault@example.com', '650.121.8234', '2007-10-15', 'SA_REP', 11000.00, 80),
    (149, 'Eleni', 'Zlotkey', 'eleni.zlotkey@example.com', '650.121.9234', '2008-01-29', 'SA_REP', 10500.00, 80),
    (150, 'Peter', 'Tucker', 'peter.tucker@example.com', '650.124.1214', '2002-03-21', 'SA_REP', 10000.00, 80);





-- Delete all records from the Employees table
DELETE FROM Employees;
-- Delete all records from the Address table
DELETE FROM Address;
-- Delete all records from the Departments table
DELETE FROM Departments;

-- Drop the Employees table if it exists
DROP TABLE IF EXISTS Employees;
-- Drop the Address table if it exists
DROP TABLE IF EXISTS Address;
-- Drop the Departments table if it exists
DROP TABLE IF EXISTS Departments;
-- Drop the Countries table if it exists
DROP TABLE IF EXISTS Countries;
-- Drop the Countries table if it exists
DROP TABLE IF EXISTS testers4;

-- Create a new schema named hsnakd_schema
CREATE SCHEMA hsnakd_schema;

-- Move specific tables to the new schema
ALTER TABLE information_schema.testers4
SET SCHEMA hsnakd_schema;

ALTER TABLE information_schema.developers4
SET SCHEMA hsnakd_schema;

ALTER TABLE information_schema.scrumteam
SET SCHEMA hsnakd_schema;

-- Select the hsnakd_schema schema
SELECT schema_name
FROM information_schema.schemata
WHERE schema_name = 'hsnakd_schema';

-- Move specific tables to the new schema
ALTER TABLE information_schema.testers4 SET SCHEMA hsnakd_schema;
ALTER TABLE information_schema.developers4 SET SCHEMA hsnakd_schema;
ALTER TABLE information_schema.scrumteam SET SCHEMA hsnakd_schema;



-- Create a new schema named it_department_schema
CREATE SCHEMA it_department_schema;


-- Select the it_department_schema schema
SELECT schema_name
FROM information_schema.schemata
WHERE schema_name = 'it_department_schema';

-- Move specific tables to the new schema
ALTER TABLE hsnakd_schema.testers4 SET SCHEMA it_department_schema;
ALTER TABLE hsnakd_schema.developers4 SET SCHEMA it_department_schema;
ALTER TABLE hsnakd_schema.scrumteam SET SCHEMA it_department_schema;

-- Drop the hsnakd_schema and all objects within it
DROP SCHEMA it_department_schema CASCADE;


-- List BASE TABLE type tables
SELECT table_schema, table_name
FROM information_schema.tables
WHERE table_type = 'BASE TABLE'
ORDER BY table_schema, table_name;




CREATE TABLE REGIONS (
    region_id SERIAL PRIMARY KEY,
    region_name VARCHAR(50) NOT NULL
);


INSERT INTO REGIONS (region_name) VALUES
('Europe'),
('Americas'),
('Asia'),
('Middle East and Africa');

select * from regions;


CREATE TABLE BOOKS (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    publication_year INTEGER,
    isbn VARCHAR(20),
    genre VARCHAR(50)
);
INSERT INTO BOOKS (title, author, publication_year, isbn, genre) VALUES
('To Kill a Mockingbird', 'Harper Lee', 1960, '9780061120084', 'Fiction'),
('1984', 'George Orwell', 1949, '9780451524935', 'Dystopian'),
('Pride and Prejudice', 'Jane Austen', 1813, '9780141439518', 'Romance'),
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, '9780743273565', 'Fiction'),
('The Catcher in the Rye', 'J.D. Salinger', 1951, '9780316769488', 'Coming-of-Age');
select * from books;



-- Delete all records from the Departments table
DELETE FROM testers4;
commit
-- Drop the Employees table if it exists
DROP TABLE IF EXISTS testers4;