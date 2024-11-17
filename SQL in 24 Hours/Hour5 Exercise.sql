/* Use the product_tbl to enter data 
Add produtcts*/
/* INSERT INTO table_name 
values (',')' */
select * from products_tbl;
insert into products_tbl
values ('301','FIREMAN COSTUME','24.99');

insert into products_tbl
values ('302', 'POLICEMAN COSTUME','24.99');

insert into products_tbl
values ('303', 'KIDDIE GRAB BAG', '4.99');

/* Update the two costume prices to price of witch costume  = 29.99*/
update products_tbl
set cost = '29.99'
where prod_id = '301';

update products_tbl
set cost = '29.99'
where prod_id = '302';

/*DELETE 3 Products from products table*/
DELETE FROM products_tbl
where prod_id = '301';

DELETE FROM products_tbl
where prod_id = '302';

DELETE FROM products_tbl
where prod_id = '303';













