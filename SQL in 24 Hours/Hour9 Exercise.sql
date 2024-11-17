/*Summary data Use employee_pay_tbl*/
/*Average salary*/
select * from employee_pay_tbl;

select avg(salary) from employee_pay_tbl; 

/*Max bonus*/
select max(BONUS) from employee_pay_tbl;

/*Sum of all salary*/
select sum(salary) from employee_pay_tbl;

/* min payrate*/
select min(pay_rate) from employee_pay_tbl;

/*all rows of pay table*/
select count(*) from employee_pay_tbl;

/* Write a query to determine how many employees are in the company
whose last names begin with a G*/

select* from employee_tbl;

select count(emp_id) from employee_tbl
where last_name like 'G%';

/*Write a query to determine the total dollar amount for all the orders in
the system. Rewrite the query to determine the total dollar amount if
we set the price of each item as $10.00 */

select* from products_tbl;

SELECT SUM(COST*QTY) /*total dollar amount for all orders) cost* qty */
FROM ORDERS_TBL,PRODUCTS_TBL
WHERE ORDERS_TBL.PROD_ID=PRODUCTS_TBL.PROD_ID;

SELECT SUM(QTY) * 10
FROM ORDERS_TBL;

/* Write two sets of queries to find the first employee name and last
employee name when they are listed in alphabetical order*/

select* from employee_tbl;

select min(first_name), max(last_name)
from employee_tbl
order by first_name asc, last_name asc; 

select min(last_name) as last_name from employee_tbl; 

/* Write a query to perform an AVG function on the employee names.
Does the statement work? Determine why it is that you got that result.*/

select avg(first_name) from employee_tbl; 


 



