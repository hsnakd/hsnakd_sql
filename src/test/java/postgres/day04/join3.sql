--get me first_name,last_name and department name for all employees

select * from employees;

select * from departments;

select * from locations;

select first_name,last_name,department_name
from employees e left join departments d
on e.department_id = d.department_id
where e.department_id is null;

--get me first_name,last_name and department_name,city for all employees
select first_name,last_name,department_name,city
from employees e join departments d
on e.department_id = d.department_id
join locations l
on d.location_id = l.location_id;

--get me firstname,lastname and department name, city,country_name for all employees;
SELECT
    e.first_name,
    e.last_name,
    d.department_name,
    l.city,
    c.countryname -- country_id yerine countryname
FROM
    employees e
JOIN
    departments d ON e.department_id = d.department_id
JOIN
    locations l ON d.location_id = l.location_id
JOIN
    countries c ON l.country_id = c.countryid; -- country_id yerine countryid



SELECT
    e.first_name, e.last_name, d.department_name, l.city
FROM employees e JOIN departments d
ON e.department_id = d.department_id
JOIN locations l
ON d.location_id = l.location_id;


