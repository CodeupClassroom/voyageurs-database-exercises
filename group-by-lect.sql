use employees;

select *
from employees
where birth_date like '%-05-03';

select birth_date, count(birth_date) AS 'myFavPeople', first_name
from employees
where birth_date = '1961-05-03'
  OR birth_date = '1958-05-03'
group by birth_date, first_name
order by myFavPeople DESC;

select count(*) from employees where birth_date = '1958-05-03';

select count(*) from employees where birth_date = '1961-05-03';

select first_name, birth_date from employees where birth_date = '1958-05-03'
order by first_name;


select count(first_name), gender
from employees
where first_name = 'Kokou'
group by gender;


select * from employees
where first_name = 'Kokou' and gender = 'F';

select *
from songs
where month_fy between 5 and 8
group by genre
order by plays DESC
limit 10;