USE employees;

-- Problem 2
-- Update your queries for employees whose names start and end with 'E'.
-- Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
ORDER BY emp_no DESC;


-- Problem 3
SELECT *, CONCAT('Days at company: ', DATEDIFF(NOW(), hire_date)) FROM employees WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC;
