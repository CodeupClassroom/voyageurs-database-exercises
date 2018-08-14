USE employees;

-- List the first 10 distinct last name sorted in descending order. 
SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC
LIMIT 10;

-- Find your query for employees born on Christmas and hired in the 90s
-- find just the first 5 employees 
SELECT * FROM employees
WHERE hire_date > '199%'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5;


-- Update the query to find the tenth batch of results

SELECT * FROM employees
WHERE hire_date > '199%'
  AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;
