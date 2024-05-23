-- Retrieve all data from the Testers4 table and combine it with all data from the Developers4 table using UNION
SELECT * FROM Testers4
UNION
SELECT * FROM Developers4;

-- Explanation:
-- The UNION operator is used to combine the results of two or more SELECT statements into a single result set.
-- It removes duplicate rows by default.

-- Retrieve all unique names from the Testers4 table and combine them with all unique names from the Developers4 table using UNION
SELECT Names FROM Testers4
UNION
SELECT Names FROM Developers4;

-- Explanation:
-- This query retrieves all unique names from the Testers4 and Developers4 tables and combines them into a single result set.
-- It removes duplicate names.

-- Retrieve names that exist in both the Developers4 and Testers4 tables using INTERSECT
SELECT Names FROM Developers4
INTERSECT
SELECT Names FROM Testers4;

-- Explanation:
-- The INTERSECT operator is used to retrieve rows that exist in both query results.
-- This query retrieves names that exist in both the Developers4 and Testers4 tables.
