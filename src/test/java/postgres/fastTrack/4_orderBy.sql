/*
 ORDERBY

    - It allows us to sort data based on provided column
    - AS A DEFAULT it will order the result ASCENDING ORDER (A-Z,0-9)
    - If you wanna sort it DESCENDING order we need specify right after column name

 */
-- display all employees based salary in asc order
select * from EMPLOYEES
order by SALARY;

select * from EMPLOYEES
order by SALARY asc;
-- NOTE :BOTH query will give same result

-- display all employees based salary in desc order (9-0 ) ( high to low )
select * from EMPLOYEES
order by salary desc ;

-- display all employees based firstname in desc order (Z-A)
select * from EMPLOYEES
order by FIRST_NAME desc ;

-- display all information from employees
-- where job ids are IT_PROG and order them based on salary asc order
select * from EMPLOYEES
where JOB_ID='IT_PROG'
order by salary ;

-- display all information from employees and order them based firstname asc
select * from EMPLOYEES
order by FIRST_NAME  ;

--IQ -->  display all information from employees and order them based firstname asc and based on lastname desc
select * from  EMPLOYEES
order by FIRST_NAME,LAST_NAME DESC;

/*
 it will first order result based on firstname
 after getting result if we have same names it will order them based lastname in desc order

 David Austin
 David Berstein
 David Lee

 --After execution
 David Lee
 David Berstein
 David Austin

 */