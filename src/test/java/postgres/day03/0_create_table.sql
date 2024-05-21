CREATE TABLE ScrumTeam (
    Emp_ID SERIAL PRIMARY KEY,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30),
    JobTitle VARCHAR(20)
);

INSERT INTO ScrumTeam (FirstName, LastName, JobTitle)
VALUES ('Severus', 'Snape', 'Tester'),
       ('Harold', 'Finch', 'Developer'),
       ('Phoebe', 'Buffay', 'ScrumMaster'),
       ('Michael', 'Scofield', 'PO');

UPDATE ScrumTeam
SET JobTitle = 'Tester'
WHERE Emp_ID = 4;

DELETE FROM ScrumTeam
WHERE Emp_ID = 3;

COMMIT;


select * from ScrumTeam;



