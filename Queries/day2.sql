--What about the partial search
--We use "LIKE" and % (Wild Card)
--% can represent 0 or more character of any kind
-- can represent exactly one character of any kind

/*
 'D%'-- anything that starts with D
 eg. David, Danny, Dog
 '%d'-- anything that ends with d
 eg. Sid, Bid, Kid, Dad
 '%d%'-- any word that contains d

 Eg. Aladdin, Casandra, Adam, Brandon
 Sid, Bid, Kid, Dad
 David, Danny, Dog

 'D%a' -- anything starts with D and end with a
 Diana, Donna, Damla, Daria

 'S%e%n'-- any start with S end with n
        -- and has e something in the middle
 Steven, Stephen, Selen, Serkan, Sebastian

 'T_'-- Start with T and has exactly one character of any kind

 Tj, TD, Ta, T!, TV, T2

 '_a_'-- starts with any one character, followed by a
 and followed by any one character

 Dad, Man, Fat, Tab, Gap, Mad

 */

SELECT FIRST_NAME FROM EMPLOYEES
--WHERE FIRST_NAME like 'D%' ; --9
--WHERE FIRST_NAME like '%d'; --6
--WHERE FIRST_NAME like '%d%'; --15
--WHERE FIRST_NAME like  'D%a'; --1
--WHERE FIRST_NAME like 'S%e%n'; --3
--WHERE FIRST_NAME like 'T_'; --1
WHERE FIRST_NAME like '_a_'; --1

SELECT PHONE_NUMBER from EMPLOYEES
where PHONE_NUMBER like '515%'; --21


SELECT PHONE_NUMBER from EMPLOYEES
where PHONE_NUMBER like '%.121.%'; --contains with 121

-- Display all first_NAMe , Salary in employees table
--modify the column name for Salary in result to money

SELECT FIRST_NAME, SALARY as Money
from EMPLOYEES;

-- Display all First_Name, Last_Name , employees table
--modify the column names first name- Given_name and Last name Family_name
SELECT FIRST_NAME as Given_Name , LAST_NAME AS Family_Name
from EMPLOYEES;

-- Display all First_Name, Last_Name , employees table
--modify the column names first name- Given name and Last name Family name

SELECT FIRST_NAME as "Given Name" , LAST_NAME AS "Family Name"
from EMPLOYEES;

--Concatenation in SQL use double pipe || (This is not or)
--Display first_name  full_name for employee

SELECT FIRST_NAME, LAST_NAME, FIRST_NAME || LAST_NAME
from EMPLOYEES;

SELECT FIRST_NAME, LAST_NAME,
       FIRST_NAME|| '   ' ||LAST_NAME as "Full_Name"
from EMPLOYEES;

--Arithmetic Operation : + - * /

--Display employee name and salary and increased_salary after $5000 raise
select FIRST_NAME, SALARY, SALARY + 5000 as "INCREASED_SALARY"
from EMPLOYEES;


--Display employee name and salary and
-- increased_salary after $5000 raise
select FIRST_NAME, SALARY, SALARY + 5000 as "INCREASED_SALARY"
from EMPLOYEES;
--AND DECREASED_SALARY AFTER $2000 CUT
SELECT FIRST_NAME, SALARY, SALARY-2000 AS "DECREASED_SALARY"
FROM EMPLOYEES;

--AND YEARLY_SALARY -- MULTIPLY BY 12
SELECT FIRST_NAME, SALARY , SALARY * 12 as "YEARLY_SALARY"
FROM EMPLOYEES;
--AND WEEKLY_SALARY -- DIVIDE BY 4
SELECT FIRST_NAME, SALARY, SALARY /4 AS "WEEKLY_SALARY"
FROM EMPLOYEES;

--IN ONE SHOT!!

SELECT FIRST_NAME, SALARY,
       SALARY +5000 as "INCREASED_SALARY",
       SALARY-2000 AS "DECREASED_SALARY",
       SALARY * 12 as "YEARLY_SALARY",
       SALARY /4 AS "WEEKLY_SALARY"

FROM EMPLOYEES;

--SQL BUILT-IN FUNCTIONS:
--REUSABLE CODE THAT WRAPPED INTO FOR COMMON TASKS
--LIKE ROUNDING NUMBERS, GETTING LENGTH OF STR AND MORE
-- SINGLE ROW FUNCTION:
--IT AFFECT EACH AND EVERY ROW AND RETURN SAME NUMBER OF ROW

--FEW TEXT FUNCTIONS:

--LENGTH, RETURN THE LENGTH OF STRING
--UPPER , ACCEPT ONE PARAMETER (COLUMN NAME) AND RETURN UPPERCASE
--LOWER, ACCEPT ONE PARAMETER (COLUMN NAME) AND RETURN LOWERCASE
--DISPLAY FIRST_NAME, AND UPPERCASE FIRST NAME IN EMPLOYEE TABLE
SELECT FIRST_NAME,
       UPPER(FIRST_NAME) AS "UPPERCASE_NAME",
       LOWER(FIRST_NAME) AS "LOWERCASE_NAME",
       LENGTH(FIRST_NAME) AS "CHAR_COUNT"
FROM EMPLOYEES;

--FIND OUT ALL FIRST_NAME AND CHARACTER COUNT
--ONLY DISPLAY IF CHARACTER COUNT IS EXACTLY

SELECT FIRST_NAME, LENGTH(FIRST_NAME)
FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME) =5;

--ONLY DISPLAY IF FIRST NAME CHARACTER COUNT IS MORE THAN 10
SELECT FIRST_NAME, LENGTH(FIRST_NAME)
FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME)>=10 ;
--ONLY DISPLAY IF FIRST NAME CHARACTER COUNT IS BETWEEN 7-9
SELECT FIRST_NAME, LENGTH(FIRST_NAME)
FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME) BETWEEN 7 AND 9;
--ONLY DISPLAY IF FIRST NAME CHARACTER COUNT IS NOT BETWEEN 5-10
SELECT FIRST_NAME, LENGTH(FIRST_NAME)
FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME) NOT BETWEEN 5 AND 10;
--ONLY DISPLAY IF FIRST NAME CHARACTER COUNT IS 2 OR 9 OR 11
SELECT FIRST_NAME, LENGTH(FIRST_NAME)
FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME) IN (2, 9, 11);

--FIND OUT ALL FIRST_NAME THAT CONTAINS d OR D
SELECT FIRST_NAME, UPPER(FIRST_NAME)
FROM EMPLOYEES
--WHERE FIRST_NAME LIKE '%D%' OR  FIRST_NAME LIKE '%d%';
where UPPER(FIRST_NAME) LIKE '%D%';

-- FEW NUMBER FUNCTIONS:
--ROUND(DECIMAL NUMBER HERE)-->ROUNDER NUMBER
--ROUND (DECIMAL NUMBER HERE, DIGIT YOU WANNA KEY)-->ROUNDED NUMBER WITH DESIRED DIGIT

--FIND OUT SALARY AND DAILY SALARY OF EMPLOYEE
SELECT SALARY,
       ROUND(SALARY/30),
           ROUND(SALARY/30 , 5)
FROM EMPLOYEES;

select FIRST_NAME
from EMPLOYEES
order by length(FIRST_NAME) DESC;











--MULTIROW FUNCTION |GROUP FUNCTIONS | AGGREGATE FUNCTIONS
--COUNT, MAX, MIN, SUM, AVG

--YOU CAN USE COUNT FUNCTION EITHER WITH * OR COLUMN NAME
--WHEN USED WITH * IT WILL JUST RETURN THE ROW COUNT
--WHEN USED WITH COLUMN NAME IT WILL RETURN NON-NULL ROW COUNT ONLY
SELECT COUNT(*), COUNT(FIRST_NAME)
FROM EMPLOYEES;

-- WE HAVE ONLY 35 EMPLOYEES WITH COMMISSION_PCT VALUE NOT NULL
SELECT COUNT(COMMISSION_PCT)
FROM EMPLOYEES;

SELECT MAX(SALARY)
FROM EMPLOYEES;

--FIND OUT THE MAX SALARY IN EMPLOYEES TABLE
--EXCLUDE THE SALARY 24000


SELECT MAX(SALARY)
FROM EMPLOYEES
WHERE SALARY != 24000;

--MIN
---FIND OUT MINIMUM SALARY IN EMPLOYEES TABLE
SELECT MIN(SALARY)
FROM EMPLOYEES;

--FIND OUT THE MINIMUM SALARY IN EMPLOYEES TABLE
--EXCLUDE THE SALARY 2100
SELECT MIN(SALARY)
FROM EMPLOYEES
WHERE SALARY!= 2100;

--SUM
--GET THE SUM OF ENTIRE EMPLOYEES SALARY
SELECT SUM(SALARY)
FROM EMPLOYEES;

--GET THE SUM OF ENTIRE EMPLOYEES SALARY FOR DEPARTMENT_ID 90
SELECT SUM(SALARY)
FROM EMPLOYEES
WHERE DEPARTMENT_ID=90;

--AVG
--FIND OUT AVERAGE SALARY FOR ALL EMPLOYEES
SELECT AVG(SALARY) , ROUND(AVG(SALARY))
FROM EMPLOYEES;

--ALL IN ONE SHOT
SELECT COUNT(*) AS "EMPLOYEE COUNT",
       MAX(SALARY) AS "HIGHEST SALARY" ,
       MIN(SALARY) AS "LOWEST SALARY" ,
       SUM(SALARY) AS "SUM OF ALL SALARY" ,
       AVG(SALARY) AS "AVERAGE SALARY"
FROM EMPLOYEES;


---- GROUP BY ,
-- CAN BE USED ALONG WITH MULTI-ROW(AGGREGATE, GROUP) FUNCTIONS
-- TO GENERATE RESULT PER GROUP INSTEAD OF WHOLE TABLE
-- IT CAN ONLY BE USED ALONG WITH MULTI-ROW FUNCTIONS
-- CAN NOT BE USED BY ITSELF

SELECT MAX(SALARY)
FROM EMPLOYEES ;


-- DISPLAY COUNT OF EMPLOYEES IN EACH DEPARTMENT

SELECT DEPARTMENT_ID,
       COUNT(*) AS "DEP_EMP_COUNT"
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
;

--- DISPLAY THE MAX SALARY FOR EACH DEPARTMENT
--- DISPLAY THE AVG SALARY FOR EACH DEPARTMENT
--- DISPLAY THE SUM SALARY FOR EACH DEPARTMENT
SELECT DEPARTMENT_ID,
       MAX(SALARY) AS "HIGHEST SALARY",
       SUM(SALARY) AS "TOTAL SALARY",
       ROUND( AVG(SALARY) ) AS "AVERAGE SALARY"
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID ;




-- DISPLAY COUNT OF EMPLOYEES IN EACH JOB_ID
SELECT JOB_ID , COUNT(*)
FROM EMPLOYEES
GROUP BY JOB_ID ;

--- DISPLAY MIN SALARY FOR EACH JOB_ID
--- DISPLAY MIN SALARY FOR EACH JOB_ID

-- USING COUNTRIES
-- DISPLAY COUNT OF COUNTRIES IN EACH REGION
SELECT REGION_ID,
       COUNT(*) AS "COUNT_OF_COUNTRIES"
FROM COUNTRIES
GROUP BY REGION_ID ;




-- USING DEPARTMENTS
-- DISPLAY COUNT OF DEPARTMENTS IN EACH LOCATION_ID


--DISPLAY COUNT OF EMPLOYEES IN EACH DEPARTMENT
--ONLY DISPLAY IF THE COUNT OF EMPLOYEES ARE MORE THAN 10
SELECT DEPARTMENT_ID,
       COUNT(*) AS "DEP_EMP_COUNT"
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) >10;







