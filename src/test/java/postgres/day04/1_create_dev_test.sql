CREATE TABLE Developers4(
    Id_Number INTEGER PRIMARY KEY,
    Names VARCHAR(30),
    Salary INTEGER
);

CREATE TABLE Testers4(
    Id_Number INTEGER PRIMARY KEY,
    Names VARCHAR(30),
    Salary INTEGER
);

INSERT INTO Developers4 VALUES (1, 'Mike', 155000);
INSERT INTO Developers4 VALUES (2, 'John', 142000);
INSERT INTO Developers4 VALUES (3, 'Steven', 850000);
INSERT INTO Developers4 VALUES (4, 'Maria', 120000);
INSERT INTO Testers4 VALUES (1, 'Steven', 110000);
INSERT INTO Testers4 VALUES (2, 'Adam', 105000);
INSERT INTO Testers4 VALUES (3, 'Lex', 100000);

COMMIT;
