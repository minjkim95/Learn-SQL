/*With clause in SQL helps make oomplex queries more readable and manageable, as the As clause is used in SQL to give a sub-query a temporary name*/
/*Example: Retrieve the product details (name, category, unit price) for products that have a quantity sold greater than the average quantity sold across all products.*/ 
select product_name, category, unit_price, quantity_sold from products join sales on (products.product_id = sales.product_id)
where quantity_sold > (select avg(quantity_sold) from sales); 
/* or */
With avgTable(averageValue) as (
select avg(quantity_sold) 
from sales
)

select product_name, category, unit_price from products join sales on (products.product_id = sales.product_id), avgTable /*must include with temporary table*/
where quantity_sold > avgTable.averageValue;
