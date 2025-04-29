#SQL Practice

# Create Sales table 
Create table sales (
	sale_id int primary key,
    product_id int, 
    quantity_solsale_idsalesd int, 
    sale_date date, 
    total_price decimal(10,2) 
);

#Insert sample data in to sales table
INSERT INTO sales
(sale_id, product_id, quantity_sold, sale_date, total_price)
values
(1, 101, 5, '2024-01-01', 2500.00),
(2, 102, 3, '2024-01-02', 900.00),
(3, 103, 2, '2024-01-02', 60.00),
(4, 104, 4, '2024-01-03', 80.00),
(5, 105, 6, '2024-01-03', 90.00);

# Create Products table
create table Products (
	product_id int primary key,
    product_name varchar(10),
    category varchar(50),
    unit_price decimal(10,2) 
);

INSERT INTO Products 
(product_id, product_name, category, unit_price) 
values
(101, 'Laptop', 'Electronics', 500.00),
(102, 'Smartphone', 'Electronics', 300.00),
(103, 'Headphones', 'Electronics', 30.00),
(104, 'Keyboard', 'Electronics', 20.00),
(105, 'Mouse', 'Electronics', 15.00);

# Basic 
# 1. Retrieve all columns from the Sales table.
select *from sales;

# 2. Retrieve the product_name and unit_price from the Products table.
select product_name,unit_price from Products; 

# 3. Retrieve the sale_id and sale_date from the Sales table.
select sale_id, sale_date from sales;

# 4. Filter the Sales table to show only sales with a total_price greater than $100.
select total_price from sales 
where total_price >100;

# 5. Filter the Products table to show only products in the 'Electronics' category.
select *from Products 
where category = "Electronics";

# 6. Retrieve the sale_id and total_price from the Sales table for sales made on January 3, 2024.
select sale_id, total_price, sale_date from sales
where sale_date = "2024-01-03";

# 7. Retrieve the product_id and product_name from the Products table for products with a unit_price greater than $100.
select product_id, product_name from Products
where unit_price >100; 

# 8. Calculate the total revenue generated from all sales in the Sales table.
select sum(total_price) as total_revenue from sales;

# 9. Calculate the average unit_price of products in the Products table.
select avg(unit_price) from Products;

# 10. Calculate the total quantity_sold from the Sales table.
select SUM(quantity_sold) from sales; 

# 11. Retrieve the sale_id, product_id, and total_price from the Sales table for sales with a quantity_sold greater than 4.
select sale_id, product_id, total_price from sales
where quantity_sold > 4;

# 12. Retrieve the product_name and unit_price from the Products table, ordering the results by unit_price in descending order.
select product_name, unit_price from Products
order by unit_price desc; 

# 13. Retrieve the total_price of all sales, rounding the values to two decimal places.
select round(sum(total_price),2) from sales; 

# 14. Calculate the average total_price of sales in the Sales table.
select avg(total_price) from sales;

# 15. Retrieve the sale_id and sale_date from the Sales table, formatting the sale_date as 'YYYY-MM-DD'.
SELECT sale_id, DATE_FORMAT(sale_date, '%Y-%m-%d') AS formatted_date from sales; 

# 16. Calculate the total revenue generated from sales of products in the 'Electronics' category.
select sum(unit_price) from products
where category = "Electronics"; 

# 17. Retrieve the product_name and unit_price from the Products table, filtering the unit_price to show only values between $20 and $600.
select product_name, unit_price from Products
where unit_price between 20 and 600; 

# 18. Retrieve the product_name and category from the Products table, ordering the results by category in ascending order.
select product_name, category from Products
order by category asc; 

# 19. Calculate the total quantity_sold of products in the 'Electronics' category.
select sum(quantity_sold) from sales join products on
(sales.product_id= Products.product_id)
where category = "Electronics"; 

# 20. Retrieve the product_name and total_price from the Sales table, calculating the total_price as quantity_sold multiplied by unit_price.
select product_name, quantity_sold*unit_price as total_price from sales join products
on (sales.product_id = Products.product_id); 

# Intermediate
#1. Calculate the total revenue generated from sales for each product category.
select sum(total_price) from sales join products on (sales.product_id = Products.product_id)
group by category = "Electronics";

#2. Find the product category with the highest average unit price.
select category from products
group by category
order by avg(unit_price) desc
limit 1; 

#3. Identify products with total sales exceeding 30.
select product_name from sales join Products on (sales.product_id = Products.product_id)
group by product_name
Having sum(total_price) >30; 

#4. Count the number of sales made in each month.
select * from sales join products on (sales.product_id = products.product_id);
SELECT DATE_FORMAT(s.sale_date, '%Y-%m') AS month, COUNT(*) AS sales_count
FROM Sales s
GROUP BY month;

#5. Determine the average quantity sold for products with a unit price greater than $100.
select avg(quantity_sold) from sales join products on (sales.product_id = products.product_id)
where unit_price > 100;

#6. Retrieve the product name and total sales revenue for each product.
select product_name, sum(total_price) from sales join products on (sales.product_id = products.product_id)
group by product_name; 

#7. List all sales along with the corresponding product names.
select * from sales join products on (sales.product_id = products.product_id);

#8. Retrieve the product name and total sales revenue for each product.
select category, sum(total_price), (SUM(total_price) / (SELECT SUM(total_price) FROM Sales)) * 100 AS revenue_percentage from Sales
JOIN Products ON sales.product_id = products.product_id
GROUP BY products.category
ORDER BY revenue_percentage DESC
LIMIT 3;

#9. Rank products based on total sales revenue.
select product_name, sum(total_price) as total_revenue, rank () over (order by sum(total_price) desc) as revenue_rank from sales
join products on products.product_id = sales.product_id
group by products.product_name; 

#10. Calculate the running total revenue for each product category.
select category, product_name, sale_date, sum(total_price) over (partition by products.category order by sale_date) as running_total_revenue
from sales join products on sales.product_id = products.product_id; 

#11. Categorize sales as "High", "Medium", or "Low" based on total price (e.g., > $200 is High, $100-$200 is Medium, < $100 is Low).
select product_name, total_price, case 
when total_price > 200 then "High"
when total_price between 100 and 200 then "Medium"
when total_price < 100 then "Low" 
End as sales_category
from sales join products on sales.product_id = products.product_id; 


#12. Identify sales where the quantity sold is greater than the average quantity sold.
select product_id, quantity_sold from sales 
where quantity_sold > (select avg(quantity_sold) from sales); 

#13. Extract the month and year from the sale date and count the number of sales for each month.
SELECT CONCAT(YEAR(sale_date), '-', LPAD(MONTH(sale_date), 2, '0')) AS month,
       COUNT(*) AS sales_count
FROM Sales
GROUP BY YEAR(sale_date), MONTH(sale_date);

#14. Calculate the number of days between the current date and the sale date for each sale.
select sale_id , DATEDIFF(now(), sale_date) from sales; 
SELECT sale_id, DATEDIFF(NOW(), sale_date) AS days_since_sale
FROM Sales;

#15. Identify sales made during weekdays versus weekends.
SELECT sale_id,
       CASE 
           WHEN DAYOFWEEK(sale_date) IN (1, 7) THEN 'Weekend'
           ELSE 'Weekday'
       END AS day_type
FROM Sales;

# Advanced
#1. Write a query to create a view named Total_Sales that displays the total sales amount for each product along with their names and categories.
create view Total_Sales as
select total_price, quantity_sold, product_name, category from sales as s join products as p on s.product_id = p.product_id;

#2. Retrieve the product details (name, category, unit price) for products that have a quantity sold greater than the average quantity sold across all products.
select product_name, category, unit_price, quantity_sold from products join sales on (products.product_id = sales.product_id)
where quantity_sold > (select avg(quantity_sold) from sales); 

#3. Explain the significance of indexing in SQL databases and provide an example scenario where indexing could significantly improve query performance in the given schema.

#4. Add a foreign key constraint to the Sales table that references the product_id column in the Products table.
select * from sales s join products p on s.product_id = p.product_id; 
ALTER TABLE sales
ADD FOREIGN KEY (product_id)
references products(product_id);
describe sales; 
 
#5. Create a view named Top_Products that lists the top 3 products 
select quantity_sold, product_name from products join sales on products.product_id = sales.product_id 
order by quantity_sold desc
limit 3;
select* from Top_Products; 

#6. Implement a transaction that deducts the quantity sold from the Products table when a sale is made in the Sales table, ensuring that both operations are either committed or rolled back together.
#7. Create a query that lists the product names along with their corresponding sales count.
select product_name, quantity_sold from sales s join products p on s.product_id = p.product_id; 

#8. Write a query to find all sales where the total price is greater than the average total price of all sales.
select product_id, total_price from sales
where total_price > (select avg(total_price) from sales); 

#9. Analyze the performance implications of indexing the sale_date column in the Sales table, considering the types of queries commonly executed against this column.

#10. Add a check constraint to the quantity_sold column in the Sales table to ensure that the quantity sold is always greater than zero.

#11. Create a view named Product_Sales_Info that displays product details along with the total number of sales made for each product.
create view Product_Sales_Info as
select quantity_sold, product_name from sales s join products p on s.product_id = p.product_id;
select * from Product_Sales_Info;

#12. Develop a stored procedure named Update_Unit_Price that updates the unit price of a product in the Products table based on the provided product_id.

#13. Implement a transaction that inserts a new product into the Products table and then adds a corresponding
# sale record into the Sales table, ensuring that both operations are either fully completed or fully rolled back.
select* from products; 

start transaction; 

Savepoint savepoint1; 

insert into products (product_id, product_name, category, unit_price) values
(106, "Onion", "Grocery", 1.00),
(107, "Diaper", "Baby", 2.00);

select * from products;

rollback to savepoint savepoint1; 

select * from products;

#14. Write a query that calculates the total revenue generated from each category of products for the year 2024.

