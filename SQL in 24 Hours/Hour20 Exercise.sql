/*Creating view exercise*/

/*Write a statement to create a view based on the total contents of
EMPLOYEE_TBL*/

create view emp_view as
select* from employee_tbl; 

select*from emp_view;

/*Write a statement that creates a summarized view containing the
average pay rate and average salary for each city in EMPLOYEE_TBL*/

select* from employee_pay_tbl;  

select* from emp_view;
create view pay_view as 
select avg(pay_rate), avg(salary), e.city
from employee_tbl e, employee_pay_tbl p
where e.emp_id = p.emp_id
group by e.city;

select* from pay_view;

/*Create another view for the same summarized data, except use the
view you created in Exercise 1 instead of the base EMPLOYEE_TBL. Compare the two results*/

create view emp_view2 as 
select ev.city, avg(PAY_RATE), avg(salary)
from emp_view ev, employee_pay_tbl p
where ev.emp_id = p.emp_id
group by ev.city; 

select *from emp_view2; 

/*Use the view in Exercise 2 to create a table called
EMPLOYEE_PAY_SUMMARIZED. Verify that the view and the table contain
the same data*/
create table employee_pay_summarized as
select * from pay_view; 

select* from employee_pay_summarized; 

/*Write statements that drop the three views that you created in
Exercises 1, 2, and 3*/

Drop view emp_view;
drop view pay_view; 
drop view emp_view2; 


