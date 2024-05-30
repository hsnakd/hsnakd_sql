-- Create Developers table
CREATE TABLE Developers (
    Id_Number INTEGER PRIMARY KEY,
    Names VARCHAR(30),
    Salary INTEGER
);

-- Create Testers table
CREATE TABLE Testers (
    Id_Number INTEGER PRIMARY KEY,
    Names VARCHAR(30),
    Salary INTEGER
);

-- Insert data into Developers table
INSERT INTO Developers (Id_Number, Names, Salary) VALUES 
(1, 'Mike', 155000),
(2, 'John', 142000),
(3, 'Steven', 850000),
(4, 'Maria', 120000);

-- Insert data into Testers table
INSERT INTO Testers (Id_Number, Names, Salary) VALUES 
(1, 'Steven', 110000),
(2, 'Adam', 105000),
(3, 'Lex', 100000);

-- Commit the transaction
COMMIT;
