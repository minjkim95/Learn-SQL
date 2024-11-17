/*Joining table*/

/*Cartesian Product*/
SELECT E.LAST_NAME, E.FIRST_NAME, EP.DATE_HIRE
From employee_tbl E, employee_pay_tbl EP; 

/* Join employee_tbl and employee_pay_tbl */
select E.LAST_NAME, E.FIRST_NAME, EP.DATE_HIRE
FROM employee_tbl e, employee_pay_tbl ep
where e.emp_id = ep.emp_id; 

/*USE INNER JOIN*/
SELECT E.LAST_NAME, E.FIRST_NAME, EP.DATE_HIRE
FROM employee_tbl E 
INNER JOIN employee_pay_tbl ep
on e.emp_id = ep.emp_id; 

/*Write an SQL statement to return the EMP_ID, LAST_NAME, and
FIRST_NAME columns from EMPLOYEE_TBL and SALARY and BONUS
columns from EMPLOYEE_PAY_TBL. Use both types of INNER JOIN techniques. 
Once that’s completed, use the queries to determine what
the average employee salary per city is.*/

desc employee_tbl;
desc employee_pay_tbl; 

select e.emp_id, e.last_name, e.first_name, ep.salary, ep.bonus 
from employee_tbl e
inner join employee_pay_tbl ep 
on e.emp_id = ep.EMP_ID;

select avg(ep.salary), e.city
from employee_tbl e inner join employee_pay_tbl ep 
on e.emp_id = ep.EMP_ID
group by e.city;

SELECT E.CITY, AVG(EP.SALARY) 
FROM EMPLOYEE_TBL E INNER JOIN
EMPLOYEE_PAY_TBL EP
ON E.EMP_ID = EP.EMP_ID
GROUP BY E.CITY;
