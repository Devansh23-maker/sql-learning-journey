-- 🚀 SQL Learning Journey — Day 25
-- Topic: SQL Query Optimization

-- 🎯 Goal:
-- Learn how to write faster and efficient SQL queries

--------------------------------------------------
-- 🔹 Why Optimization Matters?
--------------------------------------------------

-- Slow queries cause:
-- ❌ Poor performance
-- ❌ High server load
-- ❌ Slow dashboards
-- ❌ Bad user experience

--------------------------------------------------
-- 🔹 1. Use Specific Columns
--------------------------------------------------

-- ❌ Bad Practice
SELECT *
FROM employees;

-- ✅ Better Practice
SELECT employee_name, salary
FROM employees;

--------------------------------------------------
-- 🔹 2. Use Indexes
--------------------------------------------------

-- Create index on salary column

CREATE INDEX idx_salary
ON employees(salary);

-- 👉 Improves search speed

--------------------------------------------------
-- 🔹 3. Avoid Functions in WHERE
--------------------------------------------------

-- ❌ Slow Query
SELECT *
FROM employees
WHERE YEAR(joining_date) = 2025;

-- ✅ Optimized Query
SELECT *
FROM employees
WHERE joining_date
BETWEEN '2025-01-01' AND '2025-12-31';

--------------------------------------------------
-- 🔹 4. LIMIT Large Results
--------------------------------------------------

SELECT *
FROM employees
LIMIT 10;

-- 👉 Avoid fetching unnecessary rows

--------------------------------------------------
-- 🔹 5. Use EXISTS Instead of IN
--------------------------------------------------

-- ✅ Better for large datasets

SELECT department_name
FROM departments d

WHERE EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);

--------------------------------------------------
-- 🔹 6. Avoid Duplicate Data
--------------------------------------------------

-- Use normalization properly
-- Avoid repeated information

--------------------------------------------------
-- 🔹 7. Analyze Query Plan
--------------------------------------------------

EXPLAIN
SELECT *
FROM employees
WHERE salary > 50000;

-- 👉 Shows query execution plan

--------------------------------------------------
-- 🔹 8. Use Proper JOIN Conditions
--------------------------------------------------

SELECT
    e.employee_name,
    d.department_name

FROM employees e

JOIN departments d
ON e.department_id = d.department_id;

--------------------------------------------------
-- 🔹 9. Avoid Unnecessary DISTINCT
--------------------------------------------------

-- DISTINCT can slow queries

SELECT DISTINCT city
FROM employees;

--------------------------------------------------
-- 🔹 10. Use Appropriate Data Types
--------------------------------------------------

-- INT for numbers
-- DATE for dates
-- VARCHAR for text

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------

-- Indexing
-- EXPLAIN
-- Query execution
-- Efficient filtering
-- Optimized joins

--------------------------------------------------
-- 🔥 Real-World Uses:
--------------------------------------------------

-- ✅ Faster dashboards
-- ✅ Better APIs
-- ✅ Scalable systems
-- ✅ Large database handling

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Create index on city column
-- 2. Use EXPLAIN on query
-- 3. Optimize date filtering query
-- 4. Replace SELECT * with columns

--------------------------------------------------
-- 🔜 Next: SQL Transactions Deep Dive (Day 26)
--------------------------------------------------
