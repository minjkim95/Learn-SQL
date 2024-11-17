/*Using a subquery, write an SQL statement to update CUSTOMER_TBL.
Find the customer with the order number 23E934, contained in the
field ORD_NUM, and change the customer name to DAVIDS MARKET*/

SELECT* FROM CUSTOMER_TBL; 
SELECT* FROM ORDERS_TBL;

Rollback;

UPDATE CUSTOMER_TBL 
SET cust_name = 'DAVIDS MARKET'
where cust_id = (select cust_id from orders_tbl 
where ORD_NUM = '23E934');

Rollback;

/*Using a subquery, write a query that returns the names of all
employees who have a pay rate greater than JOHN DOE, whose
employee identification number is 343559876*/

select* from employee_tbl;
select* from employee_pay_tbl;

select e.last_name, e.first_name 
from employee_tbl e,
employee_pay_tbl ep
where ep.pay_rate > (select pay_rate 
from employee_pay_tbl 
where emp_id = '343559876');


SELECT E.LAST_NAME, E.FIRST_NAME, E.MIDDLE_NAME
FROM EMPLOYEE_TBL E,
EMPLOYEE_PAY_TBL P
WHERE P.PAY_RATE > (SELECT PAY_RATE
FROM EMPLOYEE_PAY_TBL
WHERE EMP_ID = '343559876');

/* Using a subquery, write a query that lists all products that cost
more than the average cost of all products*/

select* from products_tbl;

select prod_desc 
from products_tbl
where cost > (select avg(cost) from products_tbl);




