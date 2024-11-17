# Return the current date and time
select now();

# Return the current date
select curdate();

# Return the current time
select curtime();

Create table BirthTime (
Id int primary key,
Name varchar(10),
BirthTime datetime);

Insert into BirthTime 
(Id, Name, BirthTime)
values (4120, "Pratik", "1996-09-26 16:44:15.581"); 

# Extract name and date of birth
select Name, Date(BirthTime) from BirthTime; 

# Extract(unit FROM date) to return a single part of a date/time
select name, Extract(Day from BirthTime) from BirthTime; 

select name, Extract(Month from BirthTime) from BirthTime; 
select name, Extract(Year from BirthTime) from BirthTime; 

# DATE_ADD(date, interval expression type) to add a specified time interval to a date
# interval expression = number of intervals we want to add with type being one of second, minute, etc
select name, date_add(Birthtime, interval 1 year) from BirthTime; 
select name, date_add(Birthtime, interval 30 Day) from BirthTime;

# DATE_SUB() subtract a specified time interval from a date); same syntax as Date_add()
select name, date_sub(Birthtime, interval 1 year) from BirthTime; 

# DATEDIFF(interval, date1, date2) returns the number of days between two dates
# interval = minute/ hour/ month, etc.
# date1, date 2= date/time expression
select DATEDIFF(day, '1994-03-21','1995-06-26'); 

#DATE_FORMAT() displays date/time ate in different formats
