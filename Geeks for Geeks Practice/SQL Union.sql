/*Union clause: combine two separate select statements and produce the result set as a union of both select statements*/
select * from masterid;

# combine two separate select statements with distinct values;
select product_id from sales union
select product_id from products;

# combie two separate select statments with all duplicate values allowed
select product_id from sales union all
select product_id from products; 