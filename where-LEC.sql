use  employees;

# the list of employees that were hired in 1987-02-23

#  Where
show tables;

# What

describe employees;

# what do i want to see
select first_name, last_name
# from where i get the info from
from employees
#   conditions
where hire_date = '1987-02-23';

# All the employees that starts with an F
select *
from employees where first_name like 'fer%';

select *
from employees
where first_name like '%ing'
      and gender = 'F'
      or first_name like 'fer%';

# all the employees that has in somewhere in their first name
select *
from employees
where first_name like '%in%';

# all the employees that has an employee number between 12434 and 12440
select *
from employees
where emp_no between 12434 and 12440;

select *
from employees
where emp_no >= 12434 and emp_no <= 12440;


select *
from employees
where hire_date between '1990-10-22' and '1990-11-22';

# all employees hired in feb
SELECT * FROM employees WHERE hire_date like '%-02-%';

# all employees hired start this date: 1991-02-07
select *
from employees where hire_date < '1991-02-07';

# all employees that has this first names 'Elvis','Magy','Brendon'
select * from employees where first_name in ('Elvis','Magy','Brendon');

# Same results diff approach
select * from employees where first_name = 'Elvis'
                              or first_name = 'Magy'
                              or first_name = 'Brendon';

describe titles;

select *
from titles
where emp_no = 10005;

# working with nulls

SELECT *
FROM titles
WHERE to_date IS NULL;

# Chained where clauses

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber','Baek')
      AND emp_no < 20000
      and first_name = 'Dmitri';


SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 20000
      AND (
        last_name IN ('Herber','Baek')
        OR first_name = 'Shridhar'
      );





