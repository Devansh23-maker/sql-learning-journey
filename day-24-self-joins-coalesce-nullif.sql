-- 🚀 SQL Learning Journey — Day 24
-- Topic: SELF JOIN, COALESCE & NULLIF

-- 🎯 Goal:
-- Learn advanced NULL handling and self-referencing joins

-- 📊 Sample Table: employees
-- Columns:
-- employee_id, employee_name, manager_id, salary

--------------------------------------------------
-- 🔹 1. SELF JOIN
--------------------------------------------------

-- SELF JOIN joins a table with itself

SELECT
    e.employee_name AS employee,
    m.employee_name AS manager

FROM employees e

LEFT JOIN employees m
ON e.manager_id = m.employee_id;

-- 👉 Used for hierarchical data

--------------------------------------------------
-- 🔹 2. COALESCE()
--------------------------------------------------

-- Returns first non-NULL value

SELECT
    employee_name,
    COALESCE(manager_id, 0) AS manager_value

FROM employees;

-- 👉 If manager_id is NULL → return 0

--------------------------------------------------
-- 🔹 3. NULLIF()
--------------------------------------------------

-- Returns NULL if both values are equal

SELECT
    NULLIF(100, 100) AS result_1,
    NULLIF(100, 50) AS result_2;

--------------------------------------------------
-- 🔹 4. Handling NULL Values
--------------------------------------------------

SELECT
    employee_name,

    CASE
        WHEN manager_id IS NULL THEN 'No Manager'
        ELSE 'Has Manager'
    END AS manager_status

FROM employees;

--------------------------------------------------
-- 🔹 5. COALESCE with Multiple Values
--------------------------------------------------

SELECT
    COALESCE(NULL, NULL, 'SQL', 'Python') AS first_non_null;

--------------------------------------------------
-- 🔹 6. Prevent Division Errors
--------------------------------------------------

SELECT
    100 / NULLIF(0, 0);

-- 👉 Prevents divide-by-zero error

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------

-- SELF JOIN
-- COALESCE()
-- NULLIF()
-- NULL handling

--------------------------------------------------
-- 🔥 Real-World Uses:
--------------------------------------------------

-- ✅ Employee-manager hierarchy
-- ✅ Missing value handling
-- ✅ Data cleaning
-- ✅ Error prevention

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Show employee and manager names
-- 2. Replace NULL salary with 0
-- 3. Use NULLIF in calculations
-- 4. Find employees without managers

--------------------------------------------------
-- 🔜 Next: SQL Optimization Basics (Day 25)
--------------------------------------------------
