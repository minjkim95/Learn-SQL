/* 1. Write a SELECT statement that
returns customer IDs and customer names (alpha order) for customers
who live in Indiana, Ohio, Michigan, or Illinois and whose names
begin with the letters A or B */

select * from customer_tbl;

select cust_id, cust_name,cust_state
from customer_tbl
where cust_state IN ('IN', 'OH', 'MI', 'IL') 
AND cust_name LIKE 'A%' OR cust_name like 'B%'
order by cust_name asc;

/* Using the following PRODUCTS_TBL, write a SELECT statement that
returns the product ID, product description, and product cost. Limit
the product cost to between $1.00 and $12.50 */

select * from products_tbl;

select * from products_tbl
where cost between '1.00' and '12.50';

/* Assuming that you used the BETWEEN operator in Exercise 2, rewrite
your SQL statement to achieve the same results using different
operators. If you did not use the BETWEEN operator, do so now.*/



select * from products_tbl
where cost >= 1.00 and cost <= 12.50; 

/* Write a SELECT statement that returns products that are either less than
1.00 or greater than 12.50. There are two ways to achieve the same
results. */

select* from products_tbl
where cost < 1.00 OR cost > 12.50; 

select* from products_tbl
where cost NOT BETWEEN 1.00 AND 12.50;


/*Write a SELECT statement that returns the following information from
PRODUCTS_TBL: product description, product cost, 5% sales tax for each
product, and total cost with sales tax. List the products in order from
most to least expensive. There are two ways to achieve the same
results. Try both.*/

select prod_desc, cost, cost* 0.05 sales_tax, cost*1.05 total_cost from products_tbl
order by cost*1.05 desc;

/*  Pick three items from the PRODUCTS_TBL. Now write a query to return
the rows of data from the table associated with those three items. Now
rewrite the query to return everything but those three items. For your
query use combinations of equality operators and conjunctive operators*/

select* from products_tbl;

select * from products_tbl
where cost  >= 10.00 OR prod_desc like('P%'); 

select * from products_tbl
where cost < 10.00; 

/*Rewrite the queries you wrote in Exercise 7 using the IN operator.
Which statement is more efficient? Which one is more readable? */

/*write a query to return all the products that start with the letter P.
Now write a query to return all products that do not start with the 
letter P.*/

select* from products_tbl
where prod_desc like 'P%';

select* from products_tbl 
where prod_desc not like 'P%';