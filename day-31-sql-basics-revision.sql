-- 🚀 SQL Revision Series - Day 31
-- Topic: SQL Basics Revision

-- 🎯 Goal:
-- Revise all fundamental SQL concepts learned in Days 1-5

--------------------------------------------------
-- 🔹 1. SELECT
--------------------------------------------------

SELECT *
FROM employees;

SELECT employee_name, salary
FROM employees;

--------------------------------------------------
-- 🔹 2. WHERE
--------------------------------------------------

SELECT *
FROM employees
WHERE salary > 50000;

--------------------------------------------------
-- 🔹 3. AND
--------------------------------------------------

SELECT *
FROM employees
WHERE salary > 50000
AND city = 'Delhi';

--------------------------------------------------
-- 🔹 4. OR
--------------------------------------------------

SELECT *
FROM employees
WHERE city = 'Delhi'
OR city = 'Mumbai';

--------------------------------------------------
-- 🔹 5. NOT
--------------------------------------------------

SELECT *
FROM employees
WHERE NOT city = 'Delhi';

--------------------------------------------------
-- 🔹 6. LIKE
--------------------------------------------------

-- Starts with D
SELECT *
FROM employees
WHERE employee_name LIKE 'D%';

-- Ends with h
SELECT *
FROM employees
WHERE employee_name LIKE '%h';

-- Contains 'an'
SELECT *
FROM employees
WHERE employee_name LIKE '%an%';

--------------------------------------------------
-- 🔹 7. IN
--------------------------------------------------

SELECT *
FROM employees
WHERE city IN ('Delhi', 'Mumbai', 'Jaipur');

--------------------------------------------------
-- 🔹 8. BETWEEN
--------------------------------------------------

SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 100000;

--------------------------------------------------
-- 🔹 9. ORDER BY
--------------------------------------------------

SELECT *
FROM employees
ORDER BY salary DESC;

--------------------------------------------------
-- 🔹 10. LIMIT
--------------------------------------------------

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;

--------------------------------------------------
-- 🔹 Combined Query
--------------------------------------------------

SELECT
    employee_name,
    salary,
    city

FROM employees

WHERE salary > 60000
AND city IN ('Delhi', 'Mumbai')

ORDER BY salary DESC

LIMIT 3;

--------------------------------------------------
-- 🧠 Revision Notes
--------------------------------------------------

-- SELECT -> Fetch data
-- WHERE -> Filter rows
-- AND -> All conditions true
-- OR -> Any condition true
-- NOT -> Reverse condition
-- LIKE -> Pattern matching
-- IN -> Multiple values
-- BETWEEN -> Range filter
-- ORDER BY -> Sorting
-- LIMIT -> Restrict rows

--------------------------------------------------
-- 🔥 Interview Questions
--------------------------------------------------

-- 1. Difference between WHERE and HAVING?
-- 2. Difference between LIKE and IN?
-- 3. What is LIMIT used for?
-- 4. How do you sort data descending?
-- 5. How do you filter records within a range?

--------------------------------------------------
-- 📝 Practice Tasks
--------------------------------------------------

-- Find employees from Jaipur
-- Find salaries above 80000
-- Find names starting with A
-- Find top 3 salaries
-- Find employees between 40k and 70k salary

--------------------------------------------------
-- Revision Complete ✅
--------------------------------------------------
