use employees;

-- write a query that shows each department along with the name of the current manager for that department.

describe departments;
describe dept_manager;
describe dept_emp;

select * from dept_manager limit 10;

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) AS 'Department Manager'
from departments AS d
       join dept_manager dm on dm.dept_no = d.dept_no
       join employees e on e.emp_no = dm.emp_no
where dm.to_date > now()
order by d.dept_name;

-- Find the name of all departments currently managed by women.

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) AS 'Department Manager'
from departments AS d
       join dept_manager dm on dm.dept_no = d.dept_no
       join employees e on e.emp_no = dm.emp_no
where dm.to_date > now()
  and e.gender = 'F'
order by d.dept_name;

-- Find the current titles of employees currently working in the Customer Service department.

select t.title, count(t.title) as 'Count'
from titles t
       join dept_emp de on de.emp_no = t.emp_no
       join departments d on d.dept_no = de.dept_no
where t.to_date > now()
  and de.to_date > now()
  and d.dept_name = 'Customer Service'
group by t.title;

-- Find the current salary of all current managers.

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary
from departments AS d
       join dept_manager dm on dm.dept_no = d.dept_no
       join employees e on e.emp_no = dm.emp_no
       join salaries s on s.emp_no = e.emp_no
where dm.to_date > now()
  and s.to_date > now()
order by d.dept_name;