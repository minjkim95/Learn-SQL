select* from employee_pay_tbl;

select salary from employee_pay_tbl;

select sum(salary) from employee_pay_tbl
group by salary;

/*Workshop */

/*Invoke the database and enter the following query to show all cities in employee table*/
SELECT CITY
FROM EMPLOYEE_TBL;

SELECT CITY, COUNT(*)
FROM EMPLOYEE_TBL
GROUP BY CITY;

SELECT CITY, COUNT(*)
FROM EMPLOYEE_TBL
GROUP BY CITY

HAVING COUNT(*) > 1;

/* Modify the query in Exercise 3 to order the results in descending order,
from highest count to lowest */
select city, count(*)
from employee_tbl
group by city
order by 2 desc, city;

/* Write a query to list the average pay rate and salary by position from
the EMPLOYEE_PAY_TBL table */
select* from employee_pay_tbl;

select position, avg(pay_rate), avg(salary) from employee_pay_tbl
group by position;

/* Write a query to list the average salary by position from the
EMPLOYEE_PAY_TBL table where the average salary is greater than 20000*/
select avg(salary) as avg_salary, position 
from employee_pay_tbl
GROUP by position
having avg_salary > 20000; 


