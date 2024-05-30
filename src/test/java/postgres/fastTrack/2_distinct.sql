--- DISTINCT ---

/*
 it show different values from query result based provided column
 Original data still stays in database
 */

select FIRST_NAME from EMPLOYEES;
-- it returns  107

-- display all different names from employees
select distinct FIRST_NAME from EMPLOYEES;
-- it return 91 result as a different names

--display different department_ids from employees table
select distinct DEPARTMENT_ID from EMPLOYEES;



-- IQ -->  What is Distinct keyword in sql ?