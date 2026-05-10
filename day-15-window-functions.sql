-- 🚀 SQL Learning Journey — Day 15
-- Topic: Window Functions

-- 🎯 Goal:
-- Learn advanced SQL analysis functions

-- 📊 Sample Table: students
-- Columns: id, name, marks, city

--------------------------------------------------
-- 🔹 What are Window Functions?
--------------------------------------------------

-- Window functions perform calculations
-- across rows without grouping them.

-- Unlike GROUP BY:
-- ✅ Original rows remain visible

--------------------------------------------------
-- 🔹 1. ROW_NUMBER()
--------------------------------------------------

-- Assign unique row number
SELECT
    name,
    marks,
    ROW_NUMBER() OVER (ORDER BY marks DESC) AS row_num
FROM students;

--------------------------------------------------
-- 🔹 2. RANK()
--------------------------------------------------

-- Same rank for ties
SELECT
    name,
    marks,
    RANK() OVER (ORDER BY marks DESC) AS student_rank
FROM students;

--------------------------------------------------
-- 🔹 3. DENSE_RANK()
--------------------------------------------------

-- No rank gaps
SELECT
    name,
    marks,
    DENSE_RANK() OVER (ORDER BY marks DESC) AS dense_rank
FROM students;

--------------------------------------------------
-- 🔹 4. PARTITION BY
--------------------------------------------------

-- Ranking within each city
SELECT
    name,
    city,
    marks,
    RANK() OVER (
        PARTITION BY city
        ORDER BY marks DESC
    ) AS city_rank
FROM students;

--------------------------------------------------
-- 🔹 5. Running Total
--------------------------------------------------

SELECT
    name,
    marks,
    SUM(marks) OVER (
        ORDER BY id
    ) AS running_total
FROM students;

--------------------------------------------------
-- 🔹 6. Average Marks Window
--------------------------------------------------

SELECT
    name,
    marks,
    AVG(marks) OVER () AS avg_marks
FROM students;

--------------------------------------------------
-- 🔥 Difference:
--------------------------------------------------

-- GROUP BY:
-- Combines rows

-- Window Functions:
-- Keep rows + perform calculations

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------

-- OVER()
-- PARTITION BY
-- ROW_NUMBER()
-- RANK()
-- DENSE_RANK()

--------------------------------------------------
-- 🔥 Real-World Uses:
--------------------------------------------------

-- ✅ Leaderboards
-- ✅ Salary ranking
-- ✅ Running totals
-- ✅ Analytics dashboards

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Rank students by marks
-- 2. Rank students within city
-- 3. Find running total
-- 4. Assign row numbers

--------------------------------------------------
-- 🔜 Next: Common Table Expressions (CTEs) (Day 16)
--------------------------------------------------
