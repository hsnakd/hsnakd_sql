select * from testers4
union
select * from developers4;

select names from testers4
union
select names from developers4;


select names from developers4
intersect
select names from testers4;

--how to find duplicate names in employees table

select  first_name,count(*)
from employees
group by first_name
having count(*) >1;



