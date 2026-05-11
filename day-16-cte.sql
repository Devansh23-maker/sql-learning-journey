-- 🚀 SQL Learning Journey — Day 16
-- Topic: Common Table Expressions (CTEs)

-- 🎯 Goal:
-- Learn how to write cleaner and reusable SQL queries

-- 📊 Sample Table: students
-- Columns: id, name, marks, city

--------------------------------------------------
-- 🔹 What is a CTE?
--------------------------------------------------

-- CTE = Common Table Expression
-- Created using WITH keyword

-- It acts like a temporary result set
-- inside a query.

--------------------------------------------------
-- 🔹 1. Basic CTE
--------------------------------------------------

WITH high_marks AS (
    SELECT *
    FROM students
    WHERE marks > 80
)

SELECT *
FROM high_marks;

--------------------------------------------------
-- 🔹 2. CTE with Aggregation
--------------------------------------------------

WITH city_avg AS (
    SELECT
        city,
        AVG(marks) AS avg_marks
    FROM students
    GROUP BY city
)

SELECT *
FROM city_avg;

--------------------------------------------------
-- 🔹 3. CTE + JOIN
--------------------------------------------------

WITH city_avg AS (
    SELECT
        city,
        AVG(marks) AS avg_marks
    FROM students
    GROUP BY city
)

SELECT
    s.name,
    s.city,
    s.marks,
    c.avg_marks
FROM students s
JOIN city_avg c
ON s.city = c.city;

--------------------------------------------------
-- 🔹 4. Multiple CTEs
--------------------------------------------------

WITH high_marks AS (
    SELECT *
    FROM students
    WHERE marks > 75
),

city_count AS (
    SELECT
        city,
        COUNT(*) AS total_students
    FROM students
    GROUP BY city
)

SELECT *
FROM high_marks;

--------------------------------------------------
-- 🔹 5. Recursive CTE 🔥
--------------------------------------------------

WITH RECURSIVE numbers AS (
    SELECT 1 AS num

    UNION ALL

    SELECT num + 1
    FROM numbers
    WHERE num < 5
)

SELECT *
FROM numbers;

--------------------------------------------------
-- 🔹 Output:
--------------------------------------------------

-- 1
-- 2
-- 3
-- 4
-- 5

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------

-- WITH keyword
-- Temporary result sets
-- Recursive CTE
-- Cleaner query structure

--------------------------------------------------
-- 🔥 Advantages of CTEs:
--------------------------------------------------

-- ✅ Improves readability
-- ✅ Easier debugging
-- ✅ Better organization
-- ✅ Useful in analytics queries

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Create CTE for students with marks > 70
-- 2. Create city average CTE
-- 3. Use CTE with JOIN
-- 4. Create recursive CTE from 1 to 10

--------------------------------------------------
-- 🔜 Next: Case Statements & Conditional Logic (Day 17)
--------------------------------------------------
