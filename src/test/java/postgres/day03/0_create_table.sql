-- Create a table named ScrumTeam with columns Emp_ID, FirstName, LastName, and JobTitle.
CREATE TABLE ScrumTeam (
    Emp_ID SERIAL PRIMARY KEY,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30),
    JobTitle VARCHAR(20)
);

-- Insert data into the ScrumTeam table.
INSERT INTO ScrumTeam (FirstName, LastName, JobTitle)
VALUES ('Severus', 'Snape', 'Tester'),       -- Inserting data for Severus Snape with job title Tester
       ('Harold', 'Finch', 'Developer'),     -- Inserting data for Harold Finch with job title Developer
       ('Phoebe', 'Buffay', 'ScrumMaster'), -- Inserting data for Phoebe Buffay with job title ScrumMaster
       ('Michael', 'Scofield', 'PO');        -- Inserting data for Michael Scofield with job title PO

-- Update the job title of an employee with Emp_ID 4 to Tester.
UPDATE ScrumTeam
SET JobTitle = 'Tester'
WHERE Emp_ID = 4;

-- Delete the employee with Emp_ID 3 from the ScrumTeam table.
DELETE FROM ScrumTeam
WHERE Emp_ID = 3;

-- Commit the changes made to the database. (This is not supported in all database systems.)
COMMIT;

-- Select all rows from the ScrumTeam table to display the updated data.
SELECT * FROM ScrumTeam;


