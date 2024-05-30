-- Create WORKERS table
CREATE TABLE WORKERS (
    EMPID INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    manager_id INT
);

-- Create MANAGER table
CREATE TABLE MANAGER (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- Insert data into WORKERS table
INSERT INTO WORKERS (EMPID, first_name, last_name, manager_id) VALUES
(100, 'Steven', 'King', NULL),
(101, 'Neena', 'Kochhar', 100),
(102, 'Lex', 'De Haan', 100),
(103, 'Alexander', 'Hunold', 102),
(104, 'Bruce', 'Ernst', 103),
(105, 'David', 'Austin', 103),
(106, 'Valli', 'Pataballa', 103),
(107, 'Diana', 'Lorentz', 103),
(108, 'Nancy', 'Greenberg', 101),
(109, 'Daniel', 'Faviet', 108),
(110, 'John', 'Chen', 108);

-- Insert data into MANAGER table
INSERT INTO MANAGER (employee_id, first_name, last_name) VALUES
(100, 'Steven', 'King'),
(101, 'Neena', 'Kochhar'),
(102, 'Lex', 'De Haan'),
(103, 'Alexander', 'Hunold'),
(108, 'Nancy', 'Greenberg');

-- Alter the WORKERS table to add the salary column
ALTER TABLE workers
ADD COLUMN salary NUMERIC;

-- Update the WORKERS table with salary values
UPDATE workers SET salary = CASE
    WHEN empid = 100 THEN 24000
    WHEN empid = 101 THEN 17000
    WHEN empid = 102 THEN 17000
    WHEN empid = 103 THEN 9000
    WHEN empid = 104 THEN 6000
    WHEN empid = 105 THEN 4800
    WHEN empid = 106 THEN 4800
    WHEN empid = 107 THEN 4200
    WHEN empid = 108 THEN 12000
    WHEN empid = 109 THEN 9000
    WHEN empid = 110 THEN 18200
END;

--UPDATE workers
--SET salary = 18200
--WHERE first_name = 'John' AND last_name = 'Chen';

-- Drop table WORKERS
DROP TABLE WORKERS;

COMMIT;

commit