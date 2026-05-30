-- 🚀 SQL Revision Series - Day 31
-- Revision 1: SQL Basics + Filtering

--------------------------------------------------
-- Topics Revised
--------------------------------------------------

-- SELECT
-- WHERE
-- AND
-- OR
-- NOT
-- LIKE
-- IN
-- BETWEEN
-- ORDER BY
-- LIMIT

--------------------------------------------------
-- 1. Basic SELECT
--------------------------------------------------

SELECT *
FROM employees;

--------------------------------------------------
-- 2. WHERE
--------------------------------------------------

SELECT *
FROM employees
WHERE salary > 50000;

--------------------------------------------------
-- 3. AND
--------------------------------------------------

SELECT *
FROM employees
WHERE salary > 50000
AND city = 'Delhi';

--------------------------------------------------
-- 4. OR
--------------------------------------------------

SELECT *
FROM employees
WHERE city = 'Delhi'
OR city = 'Mumbai';

--------------------------------------------------
-- 5. NOT
--------------------------------------------------

SELECT *
FROM employees
WHERE NOT city = 'Delhi';

--------------------------------------------------
-- 6. LIKE
--------------------------------------------------

SELECT *
FROM employees
WHERE name LIKE 'D%';

--------------------------------------------------
-- 7. IN
--------------------------------------------------

SELECT *
FROM employees
WHERE city IN ('Delhi','Mumbai');

--------------------------------------------------
-- 8. BETWEEN
--------------------------------------------------

SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 100000;

--------------------------------------------------
-- 9. ORDER BY
--------------------------------------------------

SELECT *
FROM employees
ORDER BY salary DESC;

--------------------------------------------------
-- 10. LIMIT
--------------------------------------------------

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;

--------------------------------------------------
-- Revision Questions
--------------------------------------------------

-- Find employees from Jaipur
-- Find salaries above 70000
-- Find names starting with A
-- Find top 3 salaries
-- Find employees between 50k and 80k salary

--------------------------------------------------
-- Revision Complete ✅
--------------------------------------------------
