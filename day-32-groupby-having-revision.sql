-- 🚀 SQL Revision Series - Day 32
-- Topic: GROUP BY & HAVING Revision

-- 🎯 Goal:
-- Master aggregation and grouped analysis

--------------------------------------------------
-- Sample Table: employees
--------------------------------------------------

-- employee_id
-- employee_name
-- department
-- city
-- salary

--------------------------------------------------
-- 🔹 1. COUNT()
--------------------------------------------------

SELECT COUNT(*) AS total_employees
FROM employees;

--------------------------------------------------
-- 🔹 2. SUM()
--------------------------------------------------

SELECT SUM(salary) AS total_salary
FROM employees;

--------------------------------------------------
-- 🔹 3. AVG()
--------------------------------------------------

SELECT AVG(salary) AS average_salary
FROM employees;

--------------------------------------------------
-- 🔹 4. MAX()
--------------------------------------------------

SELECT MAX(salary) AS highest_salary
FROM employees;

--------------------------------------------------
-- 🔹 5. MIN()
--------------------------------------------------

SELECT MIN(salary) AS lowest_salary
FROM employees;

--------------------------------------------------
-- 🔹 6. GROUP BY Department
--------------------------------------------------

SELECT
    department,
    COUNT(*) AS employee_count

FROM employees

GROUP BY department;

--------------------------------------------------
-- 🔹 7. Average Salary Per Department
--------------------------------------------------

SELECT
    department,
    AVG(salary) AS avg_salary

FROM employees

GROUP BY department;

--------------------------------------------------
-- 🔹 8. Total Salary Per Department
--------------------------------------------------

SELECT
    department,
    SUM(salary) AS total_salary

FROM employees

GROUP BY department;

--------------------------------------------------
-- 🔹 9. HAVING
--------------------------------------------------

SELECT
    department,
    COUNT(*) AS total_employees

FROM employees

GROUP BY department

HAVING COUNT(*) > 5;

--------------------------------------------------
-- 🔹 10. HAVING with AVG()
--------------------------------------------------

SELECT
    department,
    AVG(salary) AS avg_salary

FROM employees

GROUP BY department

HAVING AVG(salary) > 70000;

--------------------------------------------------
-- 🔹 WHERE vs HAVING
--------------------------------------------------

-- WHERE:
-- Filters rows BEFORE grouping

SELECT *
FROM employees
WHERE salary > 50000;

-- HAVING:
-- Filters groups AFTER grouping

SELECT
    department,
    AVG(salary)

FROM employees

GROUP BY department

HAVING AVG(salary) > 50000;

--------------------------------------------------
-- 🔹 Combined Query
--------------------------------------------------

SELECT
    department,
    COUNT(*) AS employees,
    AVG(salary) AS avg_salary

FROM employees

WHERE city = 'Delhi'

GROUP BY department

HAVING AVG(salary) > 60000

ORDER BY avg_salary DESC;

--------------------------------------------------
-- 🧠 Revision Notes
--------------------------------------------------

-- COUNT() -> Count rows
-- SUM() -> Total values
-- AVG() -> Average value
-- MAX() -> Highest value
-- MIN() -> Lowest value
-- GROUP BY -> Create groups
-- HAVING -> Filter groups

--------------------------------------------------
-- 🔥 Interview Questions
--------------------------------------------------

-- Difference between WHERE and HAVING?
-- Can HAVING be used without GROUP BY?
-- Why use GROUP BY?
-- Difference between COUNT(*) and COUNT(column)?

--------------------------------------------------
-- 📝 Practice Tasks
--------------------------------------------------

-- Find department with highest avg salary
-- Count employees per city
-- Find cities with more than 3 employees
-- Find departments with avg salary > 80000
-- Find total salary paid by each department

--------------------------------------------------
-- Revision Complete ✅
--------------------------------------------------
