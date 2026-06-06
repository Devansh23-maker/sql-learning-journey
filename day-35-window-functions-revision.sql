-- 🚀 SQL Revision Series - Day 35
-- Topic: Window Functions Revision

-- 🎯 Goal:
-- Master Ranking & Analytical SQL Functions

--------------------------------------------------
-- Sample Table: employees
--------------------------------------------------

-- employee_id
-- employee_name
-- department
-- salary

--------------------------------------------------
-- 🔹 1. ROW_NUMBER()
--------------------------------------------------

SELECT
    employee_name,
    salary,

    ROW_NUMBER() OVER (
        ORDER BY salary DESC
    ) AS row_num

FROM employees;

-- Unique number for every row

--------------------------------------------------
-- 🔹 2. RANK()
--------------------------------------------------

SELECT
    employee_name,
    salary,

    RANK() OVER (
        ORDER BY salary DESC
    ) AS rank_num

FROM employees;

-- Same rank for ties
-- Skips rank numbers

--------------------------------------------------
-- 🔹 Example
--------------------------------------------------

-- Salary: 100,100,90

-- Rank:
-- 1
-- 1
-- 3

--------------------------------------------------
-- 🔹 3. DENSE_RANK()
--------------------------------------------------

SELECT
    employee_name,
    salary,

    DENSE_RANK() OVER (
        ORDER BY salary DESC
    ) AS dense_rank_num

FROM employees;

--------------------------------------------------
-- Example
--------------------------------------------------

-- Salary: 100,100,90

-- Dense Rank:
-- 1
-- 1
-- 2

--------------------------------------------------
-- 🔹 4. Partition By
--------------------------------------------------

SELECT
    employee_name,
    department,
    salary,

    RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS dept_rank

FROM employees;

-- Rank inside each department

--------------------------------------------------
-- 🔹 5. Running Total
--------------------------------------------------

SELECT
    employee_id,
    salary,

    SUM(salary) OVER (
        ORDER BY employee_id
    ) AS running_total

FROM employees;

--------------------------------------------------
-- 🔹 6. Moving Average
--------------------------------------------------

SELECT
    employee_id,
    salary,

    AVG(salary) OVER (
        ORDER BY employee_id
    ) AS moving_avg

FROM employees;

--------------------------------------------------
-- 🔹 7. Highest Salary Per Department
--------------------------------------------------

SELECT *

FROM (

    SELECT
        employee_name,
        department,
        salary,

        ROW_NUMBER() OVER (
            PARTITION BY department
            ORDER BY salary DESC
        ) AS rn

    FROM employees

) t

WHERE rn = 1;

--------------------------------------------------
-- 🔹 8. Top 3 Employees Per Department
--------------------------------------------------

SELECT *

FROM (

    SELECT
        employee_name,
        department,
        salary,

        DENSE_RANK() OVER (
            PARTITION BY department
            ORDER BY salary DESC
        ) AS rnk

    FROM employees

) t

WHERE rnk <= 3;

--------------------------------------------------
-- 🧠 Revision Notes
--------------------------------------------------

-- ROW_NUMBER()
-- RANK()
-- DENSE_RANK()
-- PARTITION BY
-- Running Total
-- Moving Average

--------------------------------------------------
-- 🔥 Interview Questions
--------------------------------------------------

-- Difference between RANK and DENSE_RANK?
-- Top 3 salaries per department?
-- Running total calculation?
-- Partition By meaning?

--------------------------------------------------
-- ⚔️ ROW_NUMBER vs RANK
--------------------------------------------------

-- ROW_NUMBER
-- Always unique

-- RANK
-- Same rank for ties

-- DENSE_RANK
-- Same rank without gaps

--------------------------------------------------
-- 📝 Practice Tasks
--------------------------------------------------

-- Find highest salary employee
-- Top 2 employees per department
-- Rank employees by salary
-- Running salary total
-- Department-wise ranking

--------------------------------------------------
-- Revision Complete ✅
--------------------------------------------------
