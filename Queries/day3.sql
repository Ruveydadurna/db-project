--display all FIRST_NAME that has letter a in second character
-- '_a%'
SELECT FIRST_NAME
from EMPLOYEES
WHERE FIRST_NAME LIKE '_a%';

--From departments Table
--1.13 Display Unique LOCATION_ID --7 rows
SELECT DISTINCT LOCATION_ID
from DEPARTMENTS;

--From location table
-- count how many locations we have
SELECT count(*)
from LOCATIONS;

--2.4 display all departments with DEPARTMENT_NAME contains IT
--If the MANAGER_ID is not 103
select *
from DEPARTMENTS
where DEPARTMENT_NAME like '%IT %' ;

--3.4 Display the Employee Count for EACH FIRST_NAME (yeah and observe what you got)
--Filter the grouped result to only display if the count is more than 1

select FIRST_NAME, count(*)
from  EMPLOYEES
group by FIRST_NAME
having count(*) >1;

-------------SQL JOIN-------

-- Is used to get data from 2 or more tables that related to each other
--primary key and foreign key relationship

--inner join, left outer join, right outer join, full outer join
--in order to join two tables that has relationship
--select desired columns from both tables
--from table 1
--inner join table 2 on the common column

select LOCATIONS.CITY , COUNTRIES.COUNTRY_NAME
FROM LOCATIONS
    INNER JOIN COUNTRIES ON LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID;

SELECT COUNTRIES.COUNTRY_NAME , REGIONS.REGION_NAME
FROM COUNTRIES
INNER JOIN REGIONS ON COUNTRIES.REGION_ID = REGIONS.REGION_ID ;


--WE CAN USE ALIAS FOR TABLE TO MAKE ABOVE QUERY SLIGHTLY MORE READABLE
--nicknames are followed by space and the letter or word
-- you can use nickname to select the columns
--just like you did in java obj. VariableName

SELECT c.COUNTRY_NAME , r.REGION_NAME
FROM COUNTRIES c
inner join REGIONS r on c.REGION_ID = r.REGION_ID;

SELECt l.CITY , c.COUNTRY_NAME
FROM COUNTRIES c
INNER JOIN LOCATIONS l on l.COUNTRY_ID = c.COUNTRY_ID;4



