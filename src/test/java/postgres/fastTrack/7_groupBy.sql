
--- GROUP BY ---

-- Task1 : display average salary for IT_PROG
select avg(salary) from EMPLOYEES
where JOB_ID='IT_PROG';

-- Task 2  : display average salary for SA_REP
select avg(salary) from EMPLOYEES
where JOB_ID='SA_REP';

-- Task 3  : display average salary for SA_REP
select avg(salary) from EMPLOYEES
where JOB_ID='PU_MAN';

-- how many different job id we have ?
select count(distinct job_id) from EMPLOYEES;

/*
    INSTEAD OF TYING SAME QUERY FOR 19 DIFFERENT JOB IDs
    We are gonna group them based on JOB ID and get average salary in one shot
 */

select FIRST_NAME,LAST_NAME,JOB_ID,SALARY from EMPLOYEES;

-- get me AVG salary for EACH job_id from Employees table
select JOB_ID,avg(salary) from EMPLOYEES
group by JOB_ID;

select JOB_ID,avg(salary),min(salary),max(SALARY),sum(salary),count(*) from EMPLOYEES
group by JOB_ID;


-- get me total salary for EACH department from Employees table

select FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY from EMPLOYEES;

select DEPARTMENT_ID,sum(salary),count(*),max(salary),min(salary),round(avg(salary)) from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID;

-- order results based on employees count in desc
select DEPARTMENT_ID,sum(salary),count(*),max(salary),min(salary),round(avg(salary)) from EMPLOYEES
where DEPARTMENT_ID is not null   -- to remove null department id from result
group by DEPARTMENT_ID
order by count(*) desc;

-- order results based on department id in asc
select DEPARTMENT_ID,sum(salary),count(*),max(salary),min(salary),round(avg(salary)) from EMPLOYEES
where DEPARTMENT_ID is not null   -- to remove null department id from result
group by DEPARTMENT_ID
order by DEPARTMENT_ID;

-- order results based on avg(salary) in desc
select DEPARTMENT_ID,sum(salary),count(*),max(salary),min(salary),round(avg(salary)) from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by avg(SALARY) desc;