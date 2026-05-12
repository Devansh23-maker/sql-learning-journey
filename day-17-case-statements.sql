-- 🚀 SQL Learning Journey — Day 17
-- Topic: CASE Statements & Conditional Logic

-- 🎯 Goal:
-- Learn how to apply conditions inside SQL queries

-- 📊 Sample Table: students
-- Columns: id, name, marks, city

--------------------------------------------------
-- 🔹 What is CASE?
--------------------------------------------------

-- CASE works like IF-ELSE in programming

-- It allows conditional logic inside SQL queries

--------------------------------------------------
-- 🔹 1. Basic CASE Statement
--------------------------------------------------

SELECT
    name,
    marks,

    CASE
        WHEN marks >= 90 THEN 'Excellent'
        WHEN marks >= 75 THEN 'Good'
        WHEN marks >= 50 THEN 'Average'
        ELSE 'Fail'
    END AS performance

FROM students;

--------------------------------------------------
-- 🔹 2. CASE with Salary Categories
--------------------------------------------------

SELECT
    employee_name,
    salary,

    CASE
        WHEN salary > 100000 THEN 'High Salary'
        WHEN salary > 50000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS salary_category

FROM employees;

--------------------------------------------------
-- 🔹 3. CASE inside ORDER BY
--------------------------------------------------

SELECT
    name,
    city
FROM students

ORDER BY
CASE
    WHEN city = 'Delhi' THEN 1
    WHEN city = 'Mumbai' THEN 2
    ELSE 3
END;

--------------------------------------------------
-- 🔹 4. CASE with Aggregation
--------------------------------------------------

SELECT
    city,

    SUM(
        CASE
            WHEN marks >= 50 THEN 1
            ELSE 0
        END
    ) AS passed_students

FROM students
GROUP BY city;

--------------------------------------------------
-- 🔹 5. CASE in UPDATE
--------------------------------------------------

UPDATE students

SET grade =
CASE
    WHEN marks >= 90 THEN 'A'
    WHEN marks >= 75 THEN 'B'
    WHEN marks >= 50 THEN 'C'
    ELSE 'F'
END;

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------

-- CASE
-- WHEN
-- THEN
-- ELSE
-- END

--------------------------------------------------
-- 🔥 Real-World Uses:
--------------------------------------------------

-- ✅ Grade systems
-- ✅ Salary categories
-- ✅ Business dashboards
-- ✅ Conditional reports

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Categorize students by marks
-- 2. Create pass/fail column
-- 3. Use CASE with SUM()
-- 4. Sort cities using CASE

--------------------------------------------------
-- 🔜 Next: UNION & UNION ALL (Day 18)
--------------------------------------------------
