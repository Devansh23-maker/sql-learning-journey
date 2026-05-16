-- 🚀 SQL Learning Journey — Day 21
-- Topic: Date & Time Functions

-- 🎯 Goal:
-- Learn how to work with dates and time in SQL

-- 📊 Sample Table: orders
-- Columns: order_id, customer_name, order_date

--------------------------------------------------
-- 🔹 1. NOW()
--------------------------------------------------

-- Current date and time

SELECT NOW();

--------------------------------------------------
-- 🔹 2. CURDATE()
--------------------------------------------------

-- Current date only

SELECT CURDATE();

--------------------------------------------------
-- 🔹 3. CURTIME()
--------------------------------------------------

-- Current time only

SELECT CURTIME();

--------------------------------------------------
-- 🔹 4. DATE()
--------------------------------------------------

-- Extract date part

SELECT
    DATE(NOW()) AS current_date;

--------------------------------------------------
-- 🔹 5. YEAR(), MONTH(), DAY()
--------------------------------------------------

SELECT
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    DAY(order_date) AS order_day
FROM orders;

--------------------------------------------------
-- 🔹 6. DATEDIFF()
--------------------------------------------------

-- Difference between two dates

SELECT
    DATEDIFF('2026-12-31', '2026-01-01') AS total_days;

--------------------------------------------------
-- 🔹 7. DATE_ADD()
--------------------------------------------------

-- Add days to date

SELECT
    DATE_ADD(CURDATE(), INTERVAL 7 DAY) AS next_week;

--------------------------------------------------
-- 🔹 8. DATE_SUB()
--------------------------------------------------

-- Subtract days

SELECT
    DATE_SUB(CURDATE(), INTERVAL 30 DAY) AS last_month;

--------------------------------------------------
-- 🔹 9. DATE_FORMAT()
--------------------------------------------------

SELECT
    DATE_FORMAT(order_date, '%d-%m-%Y') AS formatted_date
FROM orders;

--------------------------------------------------
-- 🔹 10. Extract Month-wise Data
--------------------------------------------------

SELECT *
FROM orders
WHERE MONTH(order_date) = 5;

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------

-- NOW()
-- CURDATE()
-- DATEDIFF()
-- DATE_ADD()
-- DATE_FORMAT()

--------------------------------------------------
-- 🔥 Real-World Uses:
--------------------------------------------------

-- ✅ Sales reports
-- ✅ Monthly dashboards
-- ✅ Customer activity tracking
-- ✅ Time analytics

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Find current date
-- 2. Add 10 days to current date
-- 3. Extract year from order_date
-- 4. Calculate days between dates
-- 5. Format date as DD-MM-YYYY

--------------------------------------------------
-- 🔜 Next: SQL Views Project (Day 22)
--------------------------------------------------
