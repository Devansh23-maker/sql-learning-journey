-- 🚀 SQL Learning Journey — Day 7
-- Topic: JOINS (Combining Tables)

-- 🎯 Goal:
-- Learn how to combine data from multiple tables

--------------------------------------------------
-- 📊 Sample Tables
--------------------------------------------------

-- students table
-- id, name, city_id

-- cities table
-- city_id, city_name

--------------------------------------------------
-- 🔹 1. INNER JOIN (Most Important 🔥)
--------------------------------------------------

-- Get student name with city name
SELECT students.name, cities.city_name
FROM students
INNER JOIN cities
ON students.city_id = cities.city_id;

-- 👉 Only matching records will be shown

--------------------------------------------------
-- 🔹 2. LEFT JOIN
--------------------------------------------------

-- All students + matching cities
SELECT students.name, cities.city_name
FROM students
LEFT JOIN cities
ON students.city_id = cities.city_id;

-- 👉 All students shown
-- 👉 If no match → NULL

--------------------------------------------------
-- 🔹 3. RIGHT JOIN
--------------------------------------------------

-- All cities + matching students
SELECT students.name, cities.city_name
FROM students
RIGHT JOIN cities
ON students.city_id = cities.city_id;

-- 👉 All cities shown
-- 👉 Missing students → NULL

--------------------------------------------------
-- 🔹 4. FULL JOIN (Concept)
--------------------------------------------------

-- Not supported directly in MySQL
-- But concept:
-- All records from both tables

--------------------------------------------------
-- 🔹 5. JOIN with WHERE
--------------------------------------------------

-- Students from Delhi
SELECT students.name, cities.city_name
FROM students
INNER JOIN cities
ON students.city_id = cities.city_id
WHERE cities.city_name = 'Delhi';

--------------------------------------------------
-- 🔹 6. JOIN + GROUP BY (Real Use 🔥)
--------------------------------------------------

-- Count students per city
SELECT cities.city_name, COUNT(*) AS total_students
FROM students
INNER JOIN cities
ON students.city_id = cities.city_id
GROUP BY cities.city_name;

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------
-- INNER JOIN → only matching
-- LEFT JOIN → all left table
-- RIGHT JOIN → all right table
-- JOIN = combine tables using common column

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Get all students with city names
-- 2. Get all cities even if no students
-- 3. Count students in each city
-- 4. Get students from 'Mumbai'

--------------------------------------------------
-- 🔜 Next: Subqueries (Day 8)
--------------------------------------------------
