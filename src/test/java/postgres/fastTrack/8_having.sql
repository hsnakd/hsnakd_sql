--- HAVING ---
-- display department_ids where their avg salary is more than 5K
select DEPARTMENT_ID,sum(salary),count(*),max(salary),min(salary),round(avg(salary)) from EMPLOYEES
where DEPARTMENT_ID is not null   -- to remove null department id from result
group by DEPARTMENT_ID
having avg(SALARY)>5000
order by avg(salary) desc;


-- display department id where employees count is bigger than 5
select DEPARTMENT_ID,count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*)>5;

    -- order them based on number of employees in desc
        select DEPARTMENT_ID,count(*) from EMPLOYEES
        group by DEPARTMENT_ID
        having count(*)>5
        order by count(*) desc;

-- IQ --> display duplicated ( more than one) firstnames from employees table
select first_name,count(*) from EMPLOYEES
group by first_name
having count(*)>1
order by count(*) desc;