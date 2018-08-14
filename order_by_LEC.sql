-- ORDER BY LECTURE
-- see curriculum

SELECT first_name, last_name
FROM employees
ORDER BY first_name, last_name DESC;




-- first employee hired

SELECT * FROM employees
ORDER BY hire_date;

-- last employee hired
SELECT * FROM employees
ORDER BY hire_date DESC;

-- first female employee hired
SELECT * FROM employees
ORDER BY gender DESC, hire_date;

-- highest current salary
SELECT * FROM salaries
ORDER BY to_date DESC, salary;



