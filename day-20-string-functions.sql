-- 🚀 SQL Learning Journey — Day 20
-- Topic: SQL String Functions

-- 🎯 Goal:
-- Learn how to manipulate and clean text data

-- 📊 Sample Table: students
-- Columns: id, name, city

--------------------------------------------------
-- 🔹 1. CONCAT()
--------------------------------------------------

-- Combine first name and city

SELECT
    CONCAT(name, ' - ', city) AS student_info
FROM students;

--------------------------------------------------
-- 🔹 2. UPPER()
--------------------------------------------------

-- Convert text to uppercase

SELECT
    UPPER(name) AS upper_name
FROM students;

--------------------------------------------------
-- 🔹 3. LOWER()
--------------------------------------------------

-- Convert text to lowercase

SELECT
    LOWER(city) AS lower_city
FROM students;

--------------------------------------------------
-- 🔹 4. LENGTH()
--------------------------------------------------

-- Count characters in name

SELECT
    name,
    LENGTH(name) AS name_length
FROM students;

--------------------------------------------------
-- 🔹 5. SUBSTRING()
--------------------------------------------------

-- Extract first 3 letters

SELECT
    name,
    SUBSTRING(name, 1, 3) AS short_name
FROM students;

--------------------------------------------------
-- 🔹 6. TRIM()
--------------------------------------------------

-- Remove extra spaces

SELECT
    TRIM('   Devansh   ') AS cleaned_name;

--------------------------------------------------
-- 🔹 7. REPLACE()
--------------------------------------------------

-- Replace city name

SELECT
    REPLACE(city, 'Delhi', 'New Delhi') AS updated_city
FROM students;

--------------------------------------------------
-- 🔹 8. LEFT() & RIGHT()
--------------------------------------------------

SELECT
    LEFT(name, 2) AS first_two,
    RIGHT(name, 2) AS last_two
FROM students;

--------------------------------------------------
-- 🔹 9. REVERSE()
--------------------------------------------------

SELECT
    name,
    REVERSE(name) AS reversed_name
FROM students;

--------------------------------------------------
-- 🔹 10. POSITION()
--------------------------------------------------

-- Find position of character

SELECT
    POSITION('a' IN name) AS position_a
FROM students;

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------

-- CONCAT()
-- UPPER() / LOWER()
-- LENGTH()
-- SUBSTRING()
-- TRIM()
-- REPLACE()

--------------------------------------------------
-- 🔥 Real-World Uses:
--------------------------------------------------

-- ✅ Data cleaning
-- ✅ Formatting names
-- ✅ Text analytics
-- ✅ Dashboard preparation

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Convert names to uppercase
-- 2. Extract first 4 characters
-- 3. Find name lengths
-- 4. Replace city values
-- 5. Remove extra spaces

--------------------------------------------------
-- 🔜 Next: Date & Time Functions (Day 21)
--------------------------------------------------
