-- This is how you write comment in sql

/*
 This is how you write multi
 line comment
 */

-- each query you write known as sql SELECT statement
-- * means all, here it means all columns
-- from some table that exist in the database
--Just like Java,
--SQL Statements end in semi-colon; and it's mandatory
SELECT  * FROM REGIONS;

--If you want to run second statement
-- you just need to click the query to focus the cursor and click run

SELECT * FROM COUNTRIES ;

SELECT * FROM  LOCATIONS;

SELECT * FROM DEPARTMENTS;

SELECT * FROM JOBS;

SELECT * FROM JOB_HISTORY;

SELECT * FROM EMPLOYEES;

--Restricting columns in the result

SELECT FIRST_NAME, LAST_NAME,EMAIL
FROM EMPLOYEES;

/*
 Task: Select specific columns from other tables to get yourself familiar with
 HR Database
 */

 /*
  Getting Unique value from the result
  for example, only get unique first name employees table
  */

SELECT DISTINCT FIRST_NAME
FROM EMPLOYEES;


SELECT DISTINCT LAST_NAME
FROM EMPLOYEES;

SELECT DISTINCT FIRST_NAME, LAST_NAME
FROM EMPLOYEES;


--Restricting rows in the result using WHERE clause

--Operator = , > >=, <, <=, !=, <>
--Logical Operators: AND OR

--Display the Employee information for the employee with first_name Ellen
-- In SQL We use single quote for String.

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME = 'Ellen' ;

--Display the Employee First_Name, LAST_NAME, SALARY
-- for the employee with SALARY 11000

SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES
WHERE SALARY='11000';

SElect FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE FIRST_NAME = 'David' and  SALARY = 4800;


SElect FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE FIRST_NAME = 'David' OR  SALARY = 4800;


--Display the employees that make more than 5000 and less than 12000
SELECT * FROM EMPLOYEES
where SALARY>=5000 and SALARY<=12000;

--Range checking is mich simpler in SQL using
--Between ....And
--Is same as Column_Value>= lower bound and Column_value <= UpperLimit
--Above query can be much simpler and more readable as below

SELECT * FROM EMPLOYEES
    WHERE SALARY between 5000 and 1200;

--Display the employees that have JOB_ID of
--Ad_VP
--AD_ASST
--FI_ACCOUNT
--AC_ACCOUNT

SELECT FIRST_NAME, JOB_ID FROM EMPLOYEES
WHERE JOB_ID ='AD_VP'
OR JOB_ID ='AD_ASST'
   OR JOB_ID ='FI_ACCOUNT'
   OR JOB_ID ='AC_ACCOUNT';


--Using keyword IN for multiple possible value of same column in condition

SELECT FIRST_NAME, JOB_ID from EMPLOYEES
WHERE JOB_ID IN ('AD_VP', 'AD_ASST', 'FI_ACCOUNT', 'AC_ACCOUNT'  );

--How to say NOT in SQL
-- for equality check != <> ,
--FIND out all regions expect the region with region_id of 1
SELECT * FROM REGIONS
where REGION_ID !=1;

SELECT * FROM REGIONS
WHERE REGION_NAME != 'Americas';
--For BETWEEN AND --> NOT BETWEEN.. AND
--Display the employees that does not make
-- more than 5000 and less than 12000
SELECT FIRST_NAME, SALARY from EMPLOYEES
WHERE SALARY not between 5000 AND 12000;

--for IN ---> NOT IN
--Display the employees that have JOB_ID is not one of these
--Ad_VP
--AD_ASST
--FI_ACCOUNT
--AC_ACCOUNT
SELECT FIRST_NAME, LAST_NAME, JOB_ID from EMPLOYEES
WHERE JOB_ID not in ('AD_VP', 'AD_ASST', 'FI_ACCOUNT', 'AC_ACCOUNT');

--How to use null in condition?
--For Example: Find out all departments with null manager_id

SELECT  * FROM DEPARTMENTS
WHERE MANAGER_ID is null;

--For example: find out all departments that does not have Manager ID

SELECT * FROM DEPARTMENTS
where MANAGER_ID is not null ;

--SORTING the result in ascending (Low to High)
--Or Descending order(High to Low)
--Order by Clause can be used to order the result of your query
--Is use either column name or column index
--It must be the last part of the statement
--ASC for (LOW to HIGH), DESC (high to Low)

--Display Employee FIRSt_NAME and LAST_NAME and Salary
--try to sort by below criteria separately
--FIRST_NAME ASC
-- SALARY DESC
--Last_Name DESC

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
--ORDER BY  FIRST_NAME asc ;
--order by SALARY desc;
order by 1 DESC ; -- this means sort the result by first column
--SQL index start with 1 not 0 !!!!!!!!!

SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME like 'A%';

--Display all the first_name that end with Letter a in EMPLOYEES TABLES
SELECT  FIRST_NAME
from EMPLOYEES
WHERE FIRST_NAME like '%a';

SELECT FIRST_NAME
from EMPLOYEES
WHERE FIRST_NAME like '%a%';













