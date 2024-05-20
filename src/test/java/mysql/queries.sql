/* Create Database */
CREATE DATABASE mydatabase;

/* Create Table */
CREATE TABLE Employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10, 2)
);

/* Add Data: */
INSERT INTO Employees (name, age, salary) VALUES ('John', 30, 50000.00);
INSERT INTO Employees (name, age, salary) VALUES ('Alice', 25, 60000.00);
INSERT INTO Employees (name, age, salary) VALUES ('Bob', 35, 75000.00);

/* Update Data */
UPDATE Employees SET salary = 80000.00 WHERE name = 'Alice';

/* Veri Silme: */
DELETE FROM Employees WHERE name = 'Bob';

/* Veri Seçme:  */
SELECT * FROM Employees;

/* Koşullu Seçme:  */
SELECT * FROM Employees
WHERE Salary > 60000;
