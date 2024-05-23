-- Select all data from the scrumteam table
SELECT * FROM scrumteam;

-- Add a new column named salary to the scrumteam table
ALTER TABLE scrumteam ADD COLUMN salary INTEGER;

-- Update existing records with salary information
UPDATE scrumteam SET salary = 100000 WHERE emp_id = 1;
UPDATE scrumteam SET salary = 90000 WHERE emp_id = 2;
UPDATE scrumteam SET salary = 120000 WHERE emp_id = 4;

-- Select all data from the scrumteam table to view the changes
SELECT * FROM scrumteam;

-- Rename the salary column to annual_salary
ALTER TABLE scrumteam RENAME COLUMN salary TO annual_salary;

-- Select all data from the scrumteam table to view the changes
SELECT * FROM scrumteam;

-- Attempt to delete the annual_salary column (This will throw an error as it's not supported in all database systems)
ALTER TABLE scrumteam DROP COLUMN annual_salary;

-- Select all data from the scrumteam table to view the changes
SELECT * FROM scrumteam;

-- Rename the scrumteam table to agileteam
ALTER TABLE scrumteam RENAME TO agileteam;

-- Select all data from the agileteam table to view the changes
SELECT * FROM agileteam;

-- Commit the changes made to the database
COMMIT;

-- Truncate the agileteam table to delete all data while keeping the table structure intact
TRUNCATE TABLE testers4;

-- Drop the agileteam table along with all its data
DROP TABLE testers4;
