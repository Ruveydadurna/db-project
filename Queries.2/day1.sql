-- 1. get me all data from employees table
select * from EMPLOYEES;

-- 2. get me first_name, phone_number and salary from employees
select FIRST_NAME, PHONE_NUMBER, SALARY from EMPLOYEES;

-- 3. get me unique jobid from __ table
select distinct  JOB_ID from EMPLOYEES;


-- 4. get me all ST_CLERK from employee table

select JOB_ID, FIRST_NAME from EMPLOYEES
where JOB_ID like '%ST_CLERK%';

-- 5. get me postal_code from JP,UK,CA
select POSTAL_CODE, COUNTRY_ID from LOCATIONS
where COUNTRY_ID = 'JP' or COUNTRY_ID= 'UK' OR COUNTRY_ID='CA';


SELECT POSTAL_CODE, COUNTRY_ID FROM LOCATIONS
WHERE COUNTRY_ID IN ('JP', 'UK' , 'CA');

-- 6. get me city not in CH,US

-- 7. get me job_title whose min_salary is more than 4000 and less than 9000

SELECT JOB_TITLE, MIN_SALARY FROM JOBS
WHERE MIN_SALARY>4000 AND MIN_SALARY<9000;

-- 8. get me null state_province in locations table
SELECT STATE_PROVINCE FROM LOCATIONS
WHERE STATE_PROVINCE IS NULL ;


SELECT STATE_PROVINCE FROM LOCATIONS
WHERE STATE_PROVINCE IS NOT NULL ;

-- 9. get me manager_id in departments table

SELECT MANAGER_ID FROM DEPARTMENTS
WHERE MANAGER_ID IS NOT NULL ;

-- 10. get me employee_id and start_date who starts in 2001
SELECT EMPLOYEE_ID,START_DATE
FROM JOB_HISTORY
WHERE  START_DATE like '%2001%';

-- 11. get me all employee first_name who works in some CLERK position

select FIRST_NAME, JOB_ID from EMPLOYEES
where JOB_ID like '%CLERK';

-- 12. get me email whose email is 6 letter and 4th letter of email is E

select FIRST_NAME, EMAIL from EMPLOYEES
where EMAIL like '___E__';

-- 13. get me last_name according to their hire_date

select LAST_NAME, HIRE_DATE from EMPLOYEES
order by HIRE_DATE asc;

-- 14. get me first_name ascending and salary descending
select FIRST_NAME, SALARY from EMPLOYEES
order by FIRST_NAME asc , SALARY desc ;

--aggregate functions count, max, min, sum, avg. Does not work for NULL values

-- 15. get me the count of manager_id from departments
select MANAGER_ID   from DEPARTMENTS;
select count(MANAGER_ID) from DEPARTMENTS;

-- 16. get me maximum salary of IT_PROG
-- minimum salary of SA_REP
-- total salary of ST_MAN
-- average salary of ST_CLERK

select  MAX(SALARY) from EMPLOYEES
where JOB_ID='IT_PROG';

select min(SALARY) from EMPLOYEES
where JOB_ID='SA_REP';

select sum(SALARY) from EMPLOYEES
where JOB_ID= 'ST_MAN';

select avg(SALARY) from EMPLOYEES
where JOB_ID = 'ST_CLERK';

select  avg(SALARY)   from EMPLOYEES;

--average salary of all employees
select round(avg(SALARY),2) from EMPLOYEES;

-- 17. get me all city name uppercase and address lowercase
select upper(CITY) , lower(STREET_ADDRESS) from LOCATIONS;

-- 18. get me every job_title length
select JOB_TITLE, length(JOB_TITLE) from JOBS;

--get me first name + last name
select FIRST_NAME || '  ' || LAST_NAME as full_name from EMPLOYEES;

-- 19. get me maximum salary of each department_id

select  DEPARTMENT_ID, max(SALARY) from EMPLOYEES
group by DEPARTMENT_ID;

-- 20. get me how many employees in each job_id
select JOB_ID, count(JOB_ID) from EMPLOYEES
group by JOB_ID;

-- 21. get me salary information( min, max, sum, avg) of each job_id

select JOB_ID, min(SALARY),MAX(SALARY), SUM(SALARY), AVG(SALARY)  FROM EMPLOYEES
GROUP BY JOB_ID;

-- 22. get me job_id that total salary is more than 50000
SELECT JOB_ID, SUM(SALARY) FROM EMPLOYEES
GROUP BY JOB_ID
HAVING SUM(SALARY) > 50000;


-- 23. get me department_id who has more than 10 employee
SELECT DEPARTMENT_ID, COUNT(DEPARTMENT_ID) FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING COUNT(DEPARTMENT_ID) >10;

-- 24. get me which job_id has AVERAGE commission_pct over 20%
SELECT JOB_ID, AVG(COMMISSION_PCT) FROM EMPLOYEES
GROUP BY JOB_ID
HAVING AVG(COMMISSION_PCT) >=20/100;

-- 25. get me each manager_id max salary and find our those more than 10000
SELECT MANAGER_ID, MAX(SALARY) FROM EMPLOYEES
GROUP BY MANAGER_ID
HAVING MAX(SALARY) >10000;



























/*
 Good morning @students 🌞
Today's Avengers Session we will focus on practice through below questions: 💻


-- 1. get me all data from employees table
-- 2. get me first_name, phone_number and salary from employees
-- 3. get me unique jobid from __ table
-- 4. get me all ST_CLERK from employee table
-- 5. get me postal_code from JP,UK,CA
-- 6. get me city not in CH,US
-- 7. get me job_title whose min_salary is more than 4000 and less than 9000
-- 8. get me null state_province in locations table
-- 9. get me manager_id in departments table
-- 10. get me employee_id and start_date who starts in 2001
-- 11. get me all employee first_name who works in some CLERK position
-- 12. get me email whose email is 6 letter and 4th letter of email is E
-- 13. get me last_name according to their hire_date
-- 14. get me first_name ascending and salary descending
-- 15. get me manager_id from departments
-- 16. get me maximum salary of IT_PROG
            -- minimum salary of SA_REP
            -- total salary of ST_MAN
            -- average salary of ST_CLERK
-- 17. get me all city name uppercase and address losercase
-- 18. get me every job_title length
-- 19. get me maximum salary of each department_id
-- 20. get me how many employees in each job_id
-- 21. get me salary information( min, max, sum, avg) of each job_id
-- 22. get me job_id that total salary is more than 50000
-- 23. get me department_id who has more than 10 employee
-- 24. get me which job_id has commission_pct over 20%
-- 25. get me each manager_id max salary and find our those more than 10000

Hope to see you in session. 😀
 */