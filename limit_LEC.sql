USE employees;

-- LIMIT Clause (limits list of results)
-- (Include as the last clause in a SQL query)
-- Used in creating pagination and get sample batches of potentially large result sets

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
LIMIT 2 OFFSET 10;


-- OFFSET (starts the result set from a given number of records in)

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
LIMIT 5 OFFSET 10;


