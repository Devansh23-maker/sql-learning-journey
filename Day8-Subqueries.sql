-- 🚀 SQL Learning Journey — Day 8
-- Topic: Subqueries (Nested Queries)

-- 🎯 Goal:
-- Learn how to write queries inside queries

-- 📊 Sample Table: students
-- Columns: id, name, marks, city

--------------------------------------------------
-- 🔹 1. What is a Subquery?
--------------------------------------------------

-- A query inside another query

--------------------------------------------------
-- 🔹 2. Subquery in WHERE
--------------------------------------------------

-- Get students with marks greater than average marks
SELECT *
FROM students
WHERE marks > (
    SELECT AVG(marks)
    FROM students
);

--------------------------------------------------
-- 🔹 3. Subquery with IN
--------------------------------------------------

-- Get students from cities where avg marks > 70
SELECT *
FROM students
WHERE city IN (
    SELECT city
    FROM students
    GROUP BY city
    HAVING AVG(marks) > 70
);

--------------------------------------------------
-- 🔹 4. Subquery with = (Single Value)
--------------------------------------------------

-- Student with highest marks
SELECT *
FROM students
WHERE marks = (
    SELECT MAX(marks)
    FROM students
);

--------------------------------------------------
-- 🔹 5. Correlated Subquery (Advanced 🔥)
--------------------------------------------------

-- Students who scored above their city average
SELECT s1.*
FROM students s1
WHERE marks > (
    SELECT AVG(marks)
    FROM students s2
    WHERE s1.city = s2.city
);

--------------------------------------------------
-- 🔹 6. Subquery in SELECT
--------------------------------------------------

-- Show each student with avg marks of all students
SELECT name,
       marks,
       (SELECT AVG(marks) FROM students) AS avg_marks
FROM students;

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------
-- Subquery = query inside query
-- Used with WHERE, IN, SELECT
-- Correlated subquery depends on outer query

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Get students with marks < average
-- 2. Get student with lowest marks
-- 3. Get cities where max marks > 90
-- 4. Get students above their city average

--------------------------------------------------
-- 🔜 Next: Views + Indexes (Day 9)
--------------------------------------------------
