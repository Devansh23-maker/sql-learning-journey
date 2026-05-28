-- 🚀 SQL Learning Journey — Day 29
-- Topic: SQL Interview Questions Practice

-- 🎯 Goal:
-- Practice real SQL interview-style questions

--------------------------------------------------
-- 📊 Sample Table: employees
--------------------------------------------------

-- employee_id
-- employee_name
-- department
-- salary
-- joining_date

--------------------------------------------------
-- 🔹 1. Find Second Highest Salary
--------------------------------------------------

SELECT MAX(salary) AS second_highest_salary
FROM employees

WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);

--------------------------------------------------
-- 🔹 2. Find Duplicate Records
--------------------------------------------------

SELECT
    employee_name,
    COUNT(*) AS duplicate_count

FROM employees

GROUP BY employee_name

HAVING COUNT(*) > 1;

--------------------------------------------------
-- 🔹 3. Find Employees with Highest Salary
-- in Each Department
--------------------------------------------------

SELECT
    department,
    employee_name,
    salary

FROM employees e1

WHERE salary = (
    SELECT MAX(salary)
    FROM employees e2
    WHERE e1.department = e2.department
);

--------------------------------------------------
-- 🔹 4. Find Top 3 Salaries
--------------------------------------------------

SELECT DISTINCT salary
FROM employees

ORDER BY salary DESC
LIMIT 3;

--------------------------------------------------
-- 🔹 5. Employees Joined in Last 30 Days
--------------------------------------------------

SELECT *
FROM employees

WHERE joining_date >=
DATE_SUB(CURDATE(), INTERVAL 30 DAY);

--------------------------------------------------
-- 🔹 6. Count Employees Per Department
--------------------------------------------------

SELECT
    department,
    COUNT(*) AS total_employees

FROM employees

GROUP BY department;

--------------------------------------------------
-- 🔹 7. Find Employees Above Average Salary
--------------------------------------------------

SELECT *
FROM employees

WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

--------------------------------------------------
-- 🔹 8. Rank Employees by Salary
--------------------------------------------------

SELECT
    employee_name,
    salary,

    DENSE_RANK() OVER (
        ORDER BY salary DESC
    ) AS salary_rank

FROM employees;

--------------------------------------------------
-- 🔹 9. Find Departments with More Than
-- 5 Employees
--------------------------------------------------

SELECT
    department,
    COUNT(*) AS total

FROM employees

GROUP BY department

HAVING COUNT(*) > 5;

--------------------------------------------------
-- 🔹 10. Remove Duplicate Records
--------------------------------------------------

-- Example concept query

DELETE e1
FROM employees e1,
     employees e2

WHERE e1.employee_id > e2.employee_id
AND e1.employee_name = e2.employee_name;

--------------------------------------------------
-- 🔹 11. Find Nth Highest Salary
--------------------------------------------------

SELECT DISTINCT salary
FROM employees e1

WHERE 2 = (
    SELECT COUNT(DISTINCT salary)
    FROM employees e2
    WHERE e2.salary > e1.salary
) + 1;

--------------------------------------------------
-- 🔹 12. Find Employees Without Manager
--------------------------------------------------

SELECT *
FROM employees

WHERE manager_id IS NULL;

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------

-- Subqueries
-- GROUP BY
-- HAVING
-- Window Functions
-- Date Functions
-- Duplicate Handling

--------------------------------------------------
-- 🔥 Real Interview Topics:
--------------------------------------------------

-- ✅ Highest salary problems
-- ✅ Duplicate detection
-- ✅ Ranking queries
-- ✅ Department analytics
-- ✅ Date filtering

--------------------------------------------------
-- 📝 Practice Tasks:
--------------------------------------------------

-- 1. Find third highest salary
-- 2. Find lowest salary per department
-- 3. Count employees by joining year
-- 4. Find employees earning below average

--------------------------------------------------
-- 🔜 Next: Final SQL Revision & Cheat Sheet (Day 30)
--------------------------------------------------
