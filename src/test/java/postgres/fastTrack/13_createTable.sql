select * from scrumteam
-- Create table scrumteam

CREATE TABLE scrumteam (
    empid INTEGER PRIMARY KEY,
    firstname VARCHAR(30) NOT NULL,
    jobtitle VARCHAR(20) NOT NULL,
    age INTEGER,
    salary INTEGER
);

select * from scrumteam

-- Insert data into scrumteam
INSERT INTO scrumteam (empid, firstname, jobtitle, age, salary)
VALUES
    (1, 'Mike', 'Tester', 34, 120000),
    (2, 'John', 'Tester', 32, 130000),
    (3, 'John', 'Developer', 37, 160000),
    (4, 'Dembe', 'Developer', 42, 200000);

-- Commit the changes
COMMIT;

select * from scrumteam


-- Update salaries
UPDATE scrumteam SET salary = salary + 5000;
UPDATE scrumteam SET salary = salary + 20000 WHERE jobtitle = 'Tester';
UPDATE scrumteam SET salary = salary + 10000 WHERE age > 40;
COMMIT;

select * from scrumteam

-- Delete records
DELETE FROM scrumteam WHERE empid = 1;
DELETE FROM scrumteam WHERE jobtitle = 'Developer' AND age > 40;
COMMIT;

select * from scrumteam

-- Alter table scrumteam
ALTER TABLE scrumteam ADD COLUMN gender VARCHAR(10);
UPDATE scrumteam SET gender = 'Male' WHERE empid = 2;
ALTER TABLE scrumteam RENAME COLUMN salary TO annual_salary;

select * from scrumteam;

ALTER TABLE scrumteam DROP COLUMN gender;
ALTER TABLE scrumteam RENAME TO agileteam;
COMMIT;

select * from agileteam;


-- Truncate table agileteam
TRUNCATE TABLE agileteam;
COMMIT;

select * from agileteam;

-- Drop table agileteam
DROP TABLE agileteam;
COMMIT;

select * from agileteam;
