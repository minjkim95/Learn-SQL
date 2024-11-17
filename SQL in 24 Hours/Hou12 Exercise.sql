select current_date();

select emp_id, date_hire
from employee_pay_tbl; 

select emp_id, extract(year from date_hire)
from employee_pay_tbl;

select emp_id, date_hire, current_date
from employee_pay_tbl;

/*On what day of the week was each employee hired*/
select emp_id, date_hire, dayname(date_hire)
from employee_pay_tbl;

/*What is today’s Julian date (day of year)*/
select dayofyear(current_date)
from employee_pay_tbl; 


/*Type in three SQL statements. The first to get the current system
DATETIME as you did in Exercise 1, the second to convert the system
DATETIME to a date value, and the third to convert the system DATETIME
to a pure time value*/

select current_date()



