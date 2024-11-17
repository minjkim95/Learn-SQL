/*SELECT STATEMENT*/
select * from employee_tbl;

select emp_id, last_name, first_name 
from employee_tbl;

select emp_id, last_name
from employee_tbl
order by emp_id; 

SELECT EMP_ID, LAST_NAME, FIRST_NAME
FROM EMPLOYEE_TBL
WHERE EMP_ID = '213764555';

SELECT EMP_ID,SSN, LAST_NAME
FROM EMPLOYEE_TBL
WHERE EMP_ID = '213764555'
ORDER BY 1;

SELECT EMP_ID SSN, LAST_NAME
FROM EMPLOYEE_TBL
WHERE EMP_ID = '213764555'
ORDER BY 1;

SELECT EMP_ID, LAST_NAME, FIRST_NAME
FROM EMPLOYEE_TBL
WHERE EMP_ID = '213764555'
ORDER BY 3, 1, 2;

select city, state, zip
from employee_tbl;

/*Write a SELECT statement that returns the name and 
cost of each product from the PRODUCTS_TBL. 
Which product is the most expensive? */

select * from products_tbl;

select prod_desc, cost 
from products_tbl
order by cost desc;

/* Write a query that generates a list of all customers and their telephone 
numbers. */

select* from customer_tbl;
select cust_name, cust_phone
from customer_tbl;

/* Write a simple query to return a list of customers with a particular last
name. Try using a WHERE clause with the name in mixed case and
uppercase. What case sensitivity is your RDBMS set to? */
select cust_name, cust_phone 
from customer_tbl;

select last_name 
from employee_tbl
where last_name = 'glass';





