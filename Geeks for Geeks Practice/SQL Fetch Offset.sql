/* OFFSET and FETCH Clause are used in conjuntion with Select and order by clause */
/* Syntax:
SELECT column_name(s)
FROM table_name
WHERE condition
ORDER BY column_name
OFFSET rows_to_skip ROWS; 
FETCH NEXT number_of_rows Rows only*/

/*Example*/
select * from sales;

/*Print product_id, quantity_sold except the product with lowest total_price*/
select product_id, quantity_sold from sales
order by total_price
