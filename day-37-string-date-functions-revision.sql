-- 🚀 SQL Revision Series - Day 37
-- Topic: String & Date Functions Revision

-- 🎯 Goal:
-- Master Data Cleaning and Date Analysis Functions

--------------------------------------------------
-- Sample Table: employees
--------------------------------------------------

-- employee_id
-- employee_name
-- email
-- joining_date
-- salary

--------------------------------------------------
-- 🔹 STRING FUNCTIONS
--------------------------------------------------

--------------------------------------------------
-- 1. CONCAT()
--------------------------------------------------

SELECT
    CONCAT(employee_name, ' - ', email)
    AS employee_info

FROM employees;

--------------------------------------------------
-- 2. UPPER()
--------------------------------------------------

SELECT
    UPPER(employee_name)
FROM employees;

--------------------------------------------------
-- 3. LOWER()
--------------------------------------------------

SELECT
    LOWER(email)
FROM employees;

--------------------------------------------------
-- 4. LENGTH()
--------------------------------------------------

SELECT
    employee_name,
    LENGTH(employee_name)
FROM employees;

--------------------------------------------------
-- 5. SUBSTRING()
--------------------------------------------------

SELECT
    employee_name,
    SUBSTRING(employee_name,1,3)
FROM employees;

--------------------------------------------------
-- 6. TRIM()
--------------------------------------------------

SELECT
    TRIM('   Devansh   ');

--------------------------------------------------
-- 7. REPLACE()
--------------------------------------------------

SELECT
    REPLACE(
        'I Love MySQL',
        'MySQL',
        'PostgreSQL'
    );

--------------------------------------------------
-- 8. LEFT()
--------------------------------------------------

SELECT
    LEFT(employee_name,3)
FROM employees;

--------------------------------------------------
-- 9. RIGHT()
--------------------------------------------------

SELECT
    RIGHT(employee_name,3)
FROM employees;

--------------------------------------------------
-- 10. REVERSE()
--------------------------------------------------

SELECT
    REVERSE(employee_name)
FROM employees;

--------------------------------------------------
-- 🔹 DATE FUNCTIONS
--------------------------------------------------

--------------------------------------------------
-- 11. NOW()
--------------------------------------------------

SELECT NOW();

--------------------------------------------------
-- 12. CURDATE()
--------------------------------------------------

SELECT CURDATE();

--------------------------------------------------
-- 13. CURTIME()
--------------------------------------------------

SELECT CURTIME();

--------------------------------------------------
-- 14. YEAR()
--------------------------------------------------

SELECT
    YEAR(joining_date)
FROM employees;

--------------------------------------------------
-- 15. MONTH()
--------------------------------------------------

SELECT
    MONTH(joining_date)
FROM employees;

--------------------------------------------------
-- 16. DAY()
--------------------------------------------------

SELECT
    DAY(joining_date)
FROM employees;

--------------------------------------------------
-- 17. DATEDIFF()
--------------------------------------------------

SELECT
    DATEDIFF(
        CURDATE(),
        joining_date
    ) AS days_worked

FROM employees;

--------------------------------------------------
-- 18. DATE_ADD()
--------------------------------------------------

SELECT
    DATE_ADD(
        CURDATE(),
        INTERVAL 30 DAY
    );

--------------------------------------------------
-- 19. DATE_SUB()
--------------------------------------------------

SELECT
    DATE_SUB(
        CURDATE(),
        INTERVAL 30 DAY
    );

--------------------------------------------------
-- 20. DATE_FORMAT()
--------------------------------------------------

SELECT
    DATE_FORMAT(
        joining_date,
        '%d-%m-%Y'
    )
FROM employees;

--------------------------------------------------
-- 🔹 Real Data Cleaning Example
--------------------------------------------------

SELECT
    UPPER(TRIM(employee_name))
FROM employees;

--------------------------------------------------
-- 🧠 Revision Notes
--------------------------------------------------

-- CONCAT() = Combine strings
-- UPPER() = Uppercase
-- LOWER() = Lowercase
-- LENGTH() = Count characters
-- SUBSTRING() = Extract text
-- TRIM() = Remove spaces
-- REPLACE() = Replace text

--------------------------------------------------
-- Date Functions
--------------------------------------------------

-- NOW()
-- CURDATE()
-- CURTIME()
-- YEAR()
-- MONTH()
-- DAY()
-- DATEDIFF()
-- DATE_ADD()
-- DATE_SUB()
-- DATE_FORMAT()

--------------------------------------------------
-- 🔥 Interview Questions
--------------------------------------------------

-- Difference between LENGTH() and CHAR_LENGTH()?
-- How to extract first 3 characters?
-- How to calculate date difference?
-- How to format dates?
-- How to clean extra spaces?

--------------------------------------------------
-- 📝 Practice Tasks
--------------------------------------------------

-- Convert names to uppercase
-- Extract first 4 letters
-- Count name lengths
-- Calculate employee experience days
-- Format joining dates

--------------------------------------------------
-- Revision Complete ✅
--------------------------------------------------
