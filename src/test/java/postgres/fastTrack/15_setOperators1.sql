-- Select all records from testers table
SELECT * FROM testers;

-- Select all records from developers table
SELECT * FROM developers;

/*
 UNION

 - to merge more than one table vertically
 - Removes duplicates
 - Orders the results in ascending order based on ID by default
 */

SELECT * FROM developers
UNION
SELECT * FROM testers;

-- Union specific columns (names) from both tables
SELECT names FROM developers
UNION
SELECT names FROM testers;

/*
 UNION ALL

 - Does not remove duplicates
 - Does not sort the results
 */

SELECT * FROM developers
UNION ALL
SELECT * FROM testers;

-- Union all specific columns (names, salary) from both tables
SELECT names, salary FROM developers
UNION ALL
SELECT names, salary FROM testers;

/*
 MINUS
 It removes same data from first table and gives result from first table
 */

-- Minus operation between developers and testers
SELECT * FROM developers
MINUS
SELECT * FROM testers;

-- Minus operation on specific column (names)
SELECT names FROM developers
MINUS
SELECT names FROM testers;

/*
 INTERSECT
 */

-- Intersect operation between developers and testers
SELECT * FROM developers
INTERSECT
SELECT * FROM testers;

-- Intersect operation on specific column (names)
SELECT names FROM developers
INTERSECT
SELECT names FROM testers;rom testers;