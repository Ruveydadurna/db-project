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






