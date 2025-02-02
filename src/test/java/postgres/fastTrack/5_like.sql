/*


    - Percent ( % ) for matching any sequence of characters. (0 or more )
    - Underscore ( _ ) for matching any single character.

    - contains
    - startswith
    - endswith

 */

  -- display all employees where first_name STARTSWITH A
select * from EMPLOYEES
where first_name like 'A%';


-- display all employees where first_name STARTSWITH A and length of it 4 letter
select * from EMPLOYEES
where first_name like 'A___';


-- display 5 letter first names from employees ENDSWITH  m
select * from EMPLOYEES
where FIRST_NAME like '____m';

-- it gives all firstnames ENDSWITH  m
select * from EMPLOYEES
where FIRST_NAME like '%m';

-- display firstnames where second letter is a
select first_name from EMPLOYEES
where FIRST_NAME like '_a%';

-- display all employees where job id CONTAINS IT
select * from EMPLOYEES
where JOB_ID like '%IT%';


--> IQ --> What are the wilcard characters in SQL
    --> % --> it refers any sequence of characters. (0 or more )
    --> _ --> it refers any single char