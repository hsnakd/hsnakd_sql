-- Create a new schema named it_department_schema
CREATE SCHEMA edit_table;



ROLLBACK; -- End the current transaction

-- End the current session
RESET ALL;

-- Start a new session and create the students table
-- Create the students table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birthdate DATE,
    email VARCHAR(100),
    course_name VARCHAR(100),
    score INT,
    grade CHAR(2),
    description VARCHAR(100)
);




-- Insert sample data into the students table
INSERT INTO students (first_name, last_name, birthdate, email, course_name, score, grade, description) VALUES
('Ali', 'Yılmaz', '2000-01-15', 'ali.yilmaz@example.com', 'Mathematics', 85, 'A', 'Excellent'),
('Ayşe', 'Kara', '1999-05-20', 'ayse.kara@example.com', 'Physics', 78, 'B', 'Good'),
('Mehmet', 'Demir', '2001-03-10', 'mehmet.demir@example.com', 'Chemistry', 92, 'A', 'Excellent'),
('Fatma', 'Şahin', '2002-07-05', 'fatma.sahin@example.com', 'Biology', 65, 'C', 'Satisfactory'),
('Ahmet', 'Koç', '2000-11-12', 'ahmet.koc@example.com', 'History', 75, 'B', 'Good'),
('Zeynep', 'Yıldız', '2001-09-25', 'zeynep.yildiz@example.com', 'Geography', 60, 'D', 'Needs Improvement'),
('Deniz', 'Tekin', '2002-02-18', 'deniz.tekin@example.com', 'Literature', 88, 'A', 'Excellent'),
('Cem', 'Şahin', '2000-04-30', 'cem.sahin@example.com', 'Art', 70, 'B', 'Good'),
('Gizem', 'Aydın', '2001-08-14', 'gizem.aydin@example.com', 'Music', 73, 'B', 'Good'),
('Emre', 'Akar', '2002-12-08', 'emre.akar@example.com', 'Physical Education', 82, 'A', 'Excellent');




-- Adding a new column to the table
ALTER TABLE students
ADD COLUMN address VARCHAR(100);

-- Edit address for each student
UPDATE students
SET address = 'New Address'
WHERE student_id = 1;

UPDATE students
SET address = 'New Address 2'
WHERE student_id = 2;


-- Deleting a column from the table
ALTER TABLE students
DROP COLUMN address;

-- Renaming a column in the table
ALTER TABLE students
RENAME COLUMN score TO grade_score;

-- Inserting new data into the table
INSERT INTO students (first_name, last_name, birthdate, email, course_name, grade_score, grade, description) VALUES
('Hsn', 'Akd', '1984-01-01', 'hsn.akd@example.com', 'Mathematics', 95, 'A', 'Excellent');

-- Updating all information for the student named 'Hsn Akd'
UPDATE students
SET first_name = 'New First Name',
    last_name = 'New Last Name',
    birthdate = '1990-01-01',
    email = 'new.email@example.com',
    course_name = 'New Course Name',
    grade_score = 85,
    grade = 'B',
    description = 'Good'
WHERE first_name = 'Hsn' AND last_name = 'Akd';



-- Updating course name based on student ID
UPDATE students
SET course_name = 'Software'
WHERE student_id = 11;

-- Update the email value to NULL
UPDATE students
SET grade_score = NULL
WHERE student_id = 1;

-- Update multiple columns to NULL for a specific student
UPDATE students
SET grade_score = NULL,
    grade = NULL,
    description = NULL
WHERE student_id = 1;


-- Update grade_score, grade, and description for a specific student
UPDATE students
SET grade_score = 90,
    grade = 'A',
    description = 'Excellent'
WHERE student_id = 1;


-- Deleting data from the table
DELETE FROM students
WHERE course_name = 'Mathematics';

-- Updating data in the table
UPDATE students
SET grade = 'A'
WHERE student_id = 11;





-- Select all columns from the students table
SELECT * FROM students;

-- Delete all records from the students table
DELETE FROM students;

-- Drop the students table if it exists
DROP TABLE IF EXISTS students;

COMMIT;