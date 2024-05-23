-- Create a table named Developers4 with columns Id_Number, Names, and Salary
CREATE TABLE Developers4(
    Id_Number INTEGER PRIMARY KEY,
    Names VARCHAR(30),
    Salary INTEGER
);

-- Create a table named Testers4 with columns Id_Number, Names, and Salary
CREATE TABLE Testers4(
    Id_Number INTEGER PRIMARY KEY,
    Names VARCHAR(30),
    Salary INTEGER
);

-- Insert data into the Developers4 table
INSERT INTO Developers4 VALUES (1, 'Mike', 155000);
INSERT INTO Developers4 VALUES (2, 'John', 142000);
INSERT INTO Developers4 VALUES (3, 'Steven', 850000);
INSERT INTO Developers4 VALUES (4, 'Maria', 120000);

-- Insert data into the Testers4 table
INSERT INTO Testers4 VALUES (1, 'Steven', 110000);
INSERT INTO Testers4 VALUES (2, 'Adam', 105000);
INSERT INTO Testers4 VALUES (3, 'Lex', 100000);

-- Commit the transaction to save the changes to the database
COMMIT;

-- Set the search path to the hsnakd_schema schema
SET search_path TO hsnakd_schema;

-- Now you can directly use the table names
SELECT * FROM Developers4;
SELECT * FROM scrumteam; -- Assuming 'scrumteam' is another table in the 'hsnakd_schema' schema
SELECT * FROM Testers4;
