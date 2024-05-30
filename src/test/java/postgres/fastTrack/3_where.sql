--- WHERE ---

/*
 -- Which keyword we are using in JAVA to filter ?
    -- if statement


 -- To filter individual results from database while we are running query
     we are gonna use WHERE keyword
 */

select * from EMPLOYEES
where FIRST_NAME='David';

--> '' it is case SENSITIVE

-- display firstname,lastname,salary where firstname is Peter
select first_name,last_name,salary from employees
where first_name='Peter';

-- display firstname,lastname,salary where firstname is David and last_name is Austin
select first_name,last_name,salary from EMPLOYEES
where first_name='David' and last_name='Austin';

-- display all information from employees where salary is bigger than 3000
select * from EMPLOYEES
where SALARY>3000;

-- display all info from employees  who is making more than 3000 and department id is 10 ;
select * from EMPLOYEES
where SALARY>5000 and DEPARTMENT_ID=90;

-- display all info from employees where salary  equals or more than 5000  and salary  equals or less than 8000
select * from EMPLOYEES
where SALARY>=5000 and SALARY<=8000;

-- BETWEEN lower and upper --> boundries are INCLUDED
-- it will give result within this range
select * from EMPLOYEES
where SALARY between 5000 and 8000;

-- display all info from employees where employee_id between 100 and 120
select * from EMPLOYEES
where EMPLOYEE_ID between 100 and 120;  --> range is included

-- OR --
-- display all info from employees who is working as IT_PROG or MK_MAN or SA_REP
-- solution 1
select * from EMPLOYEES
where JOB_ID='IT_PROG' or JOB_ID='MK_MAN' or JOB_ID='SA_REP';

-- IN CLAUSES --
-- it uses or logic
-- it checks jobIDs from IN paranthesis to see condition is matching
-- solution 2
select * from EMPLOYEES
where JOB_ID IN('IT_PROG','MK_MAN','SA_REP');


-- display all employees name except who is working as IT_PROG or MK_MAN or SA_REP
select FIRST_NAME,JOB_ID from EMPLOYEES
where JOB_ID NOT IN('IT_PROG','MK_MAN','SA_REP');
-- 107 --> 36 of thm working as IT_PROG / MK_MAN / SA_REP
-- 71 employees

-- IS NULL
-- display all information from employees where manager id is null
select * from EMPLOYEES
where JOB_ID is null;
--> 1 result it is Steven King

-- IS NOT NULL
-- display all information from employees where manager id is not null
select * from EMPLOYEES
where JOB_ID is not null ;
--> 106 employees has manager