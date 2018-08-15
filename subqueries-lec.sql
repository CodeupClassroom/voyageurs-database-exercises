SELECT
  first_name,
  last_name,
  birth_date
from employees e
where emp_no in (SELECT emp_no
                 FROM dept_manager);


select
  first_name,
  last_name
from employees
WHERE emp_no IN (
  select emp_no
  from titles
  where title like '%engineer%'
);



#
# get the titles related to staff and then the employees that has them
#
# or titles with engineer in their name
#
#
