START TRANSACTION;

-- Create Departments Table
SAVEPOINT sp1;
CREATE TABLE IF NOT EXISTS Departments (
    ID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    Description TEXT
);

-- Create Address Table
SAVEPOINT sp2;
CREATE TABLE IF NOT EXISTS Address (
    ID INT PRIMARY KEY,
    Street VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL,
    PostalCode VARCHAR(20) NOT NULL
);

-- Create Employees Table
SAVEPOINT sp3;
CREATE TABLE IF NOT EXISTS Employees (
    ID INT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    JobTitle VARCHAR(100) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    Department_ID INT,
    Address_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Departments(ID),
    FOREIGN KEY (Address_ID) REFERENCES Address(ID)
);

COMMIT;

INSERT INTO Departments (ID, DepartmentName, Description) VALUES
(1, 'Human Resources', 'Handles recruitment and employee relations'),
(2, 'Finance', 'Manages the company’s finances'),
(3, 'IT', 'Responsible for information technology and systems'),
(4, 'Marketing', 'Handles marketing and public relations'),
(5, 'Sales', 'Manages sales operations and customer relations');


INSERT INTO Address (ID, Street, City, PostalCode) VALUES
(1, '123 Main St', 'Springfield', '12345'),
(2, '456 Elm St', 'Shelbyville', '23456'),
(3, '789 Oak St', 'Capital City', '34567'),
(4, '101 Maple St', 'Ogdenville', '45678'),
(5, '202 Birch St', 'North Haverbrook', '56789'),
(6, '303 Pine St', 'Brockway', '67890'),
(7, '404 Cedar St', 'Springfield', '12346'),
(8, '505 Walnut St', 'Shelbyville', '23457'),
(9, '606 Cherry St', 'Capital City', '34568'),
(10, '707 Redwood St', 'Ogdenville', '45679');


INSERT INTO Employees (ID, FirstName, LastName, JobTitle, Salary, Department_ID, Address_ID) VALUES
(11, 'Alice', 'Johnson', 'HR Specialist', 50000, 1, 1),
(12, 'Robert', 'Moore', 'Finance Clerk', 40000, 2, 2),
(13, 'Sophia', 'Lee', 'IT Specialist', 55000, 3, 3),
(14, 'William', 'King', 'Marketing Assistant', 47000, 4, 4),
(15, 'James', 'Scott', 'Sales Rep', 46000, 5, 5),
(16, 'Mia', 'Hill', 'HR Coordinator', 48000, 1, 6),
(17, 'Charles', 'Adams', 'Finance Director', 90000, 2, 7),
(18, 'Ella', 'Baker', 'IT Analyst', 53000, 3, 8),
(19, 'Oliver', 'Harris', 'Marketing Director', 92000, 4, 9),
(20, 'Amelia', 'Clark', 'Sales Director', 88000, 5, 10),
(21, 'Henry', 'Lewis', 'HR Generalist', 47000, 1, 1),
(22, 'Victoria', 'Walker', 'Finance Assistant', 39000, 2, 2),
(23, 'Benjamin', 'Young', 'IT Consultant', 56000, 3, 3),
(24, 'Chloe', 'Allen', 'Marketing Coordinator', 45000, 4, 4),
(25, 'Lucas', 'Wright', 'Sales Coordinator', 44000, 5, 5),
(26, 'Charlotte', 'Green', 'HR Director', 85000, 1, 6),
(27, 'Daniel', 'Hall', 'Finance Officer', 60000, 2, 7),
(28, 'Madison', 'Lee', 'IT Officer', 57000, 3, 8),
(29, 'Ethan', 'Scott', 'Marketing Officer', 53000, 4, 9),
(30, 'Grace', 'Evans', 'Sales Officer', 52000, 5, 10),
(31, 'Owen', 'Turner', 'HR Consultant', 62000, 1, 1),
(32, 'Natalie', 'Hernandez', 'Finance Specialist', 54000, 2, 2),
(33, 'Liam', 'Perez', 'IT Technician', 48000, 3, 3),
(34, 'Zoe', 'Roberts', 'Marketing Analyst', 50000, 4, 4),
(35, 'Isaac', 'Martinez', 'Sales Analyst', 49000, 5, 5),
(36, 'Hannah', 'Clark', 'HR Analyst', 51000, 1, 6),
(37, 'Samuel', 'Lopez', 'Finance Consultant', 67000, 2, 7),
(38, 'Abigail', 'Gonzalez', 'IT Director', 85000, 3, 8),
(39, 'Jackson', 'Wilson', 'Marketing Specialist', 52000, 4, 9),
(40, 'Avery', 'Anderson', 'Sales Consultant', 61000, 5, 10),
(41, 'Sebastian', 'Thomas', 'HR Officer', 46000, 1, 1),
(42, 'Sofia', 'Taylor', 'Finance Coordinator', 43000, 2, 2),
(43, 'Elijah', 'Rodriguez', 'IT Assistant', 47000, 3, 3),
(44, 'Layla', 'Lee', 'Marketing Consultant', 60000, 4, 4),
(45, 'Mason', 'Walker', 'Sales Manager', 62000, 5, 5),
(46, 'Aria', 'Hall', 'HR Clerk', 40000, 1, 6),
(47, 'Alexander', 'Allen', 'Finance Specialist', 53000, 2, 7),
(48, 'Isabella', 'Young', 'IT Clerk', 41000, 3, 8),
(49, 'Matthew', 'Hernandez', 'Marketing Officer', 54000, 4, 9),
(50, 'Ella', 'King', 'Sales Director', 90000, 5, 10);






