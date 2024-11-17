/*Write the SQL statement to create an index called EP_POSITION in
EMPLOYEE_PAY_TBL on the POSITION column*/

CREATE INDEX EP_POSITION
ON EMPLOYEE_PAY_TBL(position); 

/* Create a statement to alter the index you just created to make it
unique. What do you need to do to create a unique index on the
SALARY column? Write the SQL statements that you need to run them
in the sequence*/

/*drop index*/

drop index ep_position
on employee_pay_tbl;
create unique index ep_position
on employee_pay_tbl(position); 

/*Create a multicolumn index on ORDERS_TBL. Include the following
columns: CUST_ID, PROD_ID, and ORD_DATE.*/

create index ord_ind
on orders_tbl(cust_id, prod_id, ord_date); 
