-- 🚀 SQL Learning Journey — Day 18
-- Topic: UNION & UNION ALL

-- 🎯 Goal:
-- Learn how to combine results from multiple queries

--------------------------------------------------
-- 🔹 What is UNION?
--------------------------------------------------

-- UNION combines results from multiple SELECT queries
-- and removes duplicate rows.

--------------------------------------------------
-- 📊 Sample Tables
--------------------------------------------------

-- students_2024
-- id, name

-- students_2025
-- id, name

--------------------------------------------------
-- 🔹 1. UNION
--------------------------------------------------

SELECT name
FROM students_2024

UNION

SELECT name
FROM students_2025;

-- 👉 Duplicate names removed

--------------------------------------------------
-- 🔹 2. UNION ALL
--------------------------------------------------

SELECT name
FROM students_2024

UNION ALL

SELECT name
FROM students_2025;

-- 👉 Duplicates are NOT removed

--------------------------------------------------
-- 🔥 Difference:
--------------------------------------------------

-- UNION:
-- ✅ Removes duplicates
-- ❌ Slightly slower

-- UNION ALL:
-- ✅ Keeps duplicates
-- ✅ Faster

--------------------------------------------------
-- 🔹 3. Multiple Columns
--------------------------------------------------

SELECT id, name
FROM students_2024

UNION

SELECT id, name
FROM students_2025;

--------------------------------------------------
-- ⚠️ Important Rules
--------------------------------------------------

-- Number of columns must match
-- Data types should be compatible

--------------------------------------------------
-- 🔹 4. UNION with WHERE
--------------------------------------------------

SELECT name
FROM students
WHERE city = 'Delhi'

UNION

SELECT name
FROM students
WHERE marks > 90;

--------------------------------------------------
-- 🔹 5. UNION with ORDER BY
--------------------------------------------------

SELECT name
FROM students_2024

UNION

SELECT name
FROM students_2025

ORDER BY name;

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------

-- UNION
-- UNION ALL
-- Duplicate handling
-- Combining query results

--------------------------------------------------
-- 🔥 Real-World Uses:
--------------------------------------------------

-- ✅ Merge yearly reports
-- ✅ Combine customer data
-- ✅ Analytics dashboards
-- ✅ Multi-source reporting

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Combine two tables using UNION
-- 2. Use UNION ALL with duplicates
-- 3. Apply ORDER BY after UNION
-- 4. Combine filtered queries

--------------------------------------------------
-- 🔜 Next: EXISTS & ANY & ALL (Day 19)
--------------------------------------------------
