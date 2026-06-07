-- 🚀 SQL Revision Series - Day 36
-- Topic: CTE & CASE Statements Revision

-- 🎯 Goal:
-- Master Common Table Expressions and Conditional Logic

--------------------------------------------------
-- Sample Table: employees
--------------------------------------------------

-- employee_id
-- employee_name
-- department
-- salary

--------------------------------------------------
-- 🔹 1. Basic CTE
--------------------------------------------------

WITH high_salary_employees AS (

    SELECT *
    FROM employees
    WHERE salary > 70000

)

SELECT *
FROM high_salary_employees;

--------------------------------------------------
-- 🔹 2. CTE with Aggregation
--------------------------------------------------

WITH department_avg AS (

    SELECT
        department,
        AVG(salary) AS avg_salary

    FROM employees

    GROUP BY department

)

SELECT *
FROM department_avg;

--------------------------------------------------
-- 🔹 3. CTE + JOIN
--------------------------------------------------

WITH department_avg AS (

    SELECT
        department,
        AVG(salary) AS avg_salary

    FROM employees

    GROUP BY department

)

SELECT
    e.employee_name,
    e.salary,
    d.avg_salary

FROM employees e

JOIN department_avg d
ON e.department = d.department;

--------------------------------------------------
-- 🔹 4. Multiple CTEs
--------------------------------------------------

WITH high_salary AS (

    SELECT *
    FROM employees
    WHERE salary > 70000

),

employee_count AS (

    SELECT
        department,
        COUNT(*) AS total_employees

    FROM employees

    GROUP BY department

)

SELECT *
FROM high_salary;

--------------------------------------------------
-- 🔹 5. CASE Statement
--------------------------------------------------

SELECT
    employee_name,
    salary,

    CASE
        WHEN salary >= 100000 THEN 'Excellent'
        WHEN salary >= 70000 THEN 'Good'
        WHEN salary >= 50000 THEN 'Average'
        ELSE 'Needs Improvement'
    END AS performance

FROM employees;

--------------------------------------------------
-- 🔹 6. CASE with GROUP BY
--------------------------------------------------

SELECT

    CASE
        WHEN salary >= 70000 THEN 'High Salary'
        ELSE 'Normal Salary'
    END AS salary_group,

    COUNT(*) AS total_employees

FROM employees

GROUP BY salary_group;

--------------------------------------------------
-- 🔹 7. CASE with SUM()
--------------------------------------------------

SELECT

    SUM(
        CASE
            WHEN salary >= 70000 THEN 1
            ELSE 0
        END
    ) AS high_salary_count

FROM employees;

--------------------------------------------------
-- 🔹 8. Conditional Aggregation
--------------------------------------------------

SELECT
    department,

    SUM(
        CASE
            WHEN salary >= 70000 THEN 1
            ELSE 0
        END
    ) AS high_salary_employees

FROM employees

GROUP BY department;

--------------------------------------------------
-- 🔹 9. Employees Above Department Average
--------------------------------------------------

WITH department_avg AS (

    SELECT
        department,
        AVG(salary) AS avg_salary

    FROM employees

    GROUP BY department

)

SELECT
    e.employee_name,
    e.salary,
    d.avg_salary

FROM employees e

JOIN department_avg d
ON e.department = d.department

WHERE e.salary > d.avg_salary;

--------------------------------------------------
-- 🧠 Revision Notes
--------------------------------------------------

-- CTE = Temporary Result Set
-- WITH = Creates CTE
-- CASE = SQL IF-ELSE
-- Conditional Aggregation
-- Multiple CTEs

--------------------------------------------------
-- 🔥 Interview Questions
--------------------------------------------------

-- What is a CTE?
-- CTE vs Subquery?
-- What is CASE?
-- How to categorize data in SQL?
-- How to perform conditional counting?

--------------------------------------------------
-- ⚔️ CTE vs Subquery
--------------------------------------------------

-- CTE:
-- Better readability
-- Reusable

-- Subquery:
-- Good for small queries
-- Harder to read

--------------------------------------------------
-- 📝 Practice Tasks
--------------------------------------------------

-- Categorize employees by salary
-- Find employees above department average
-- Count high salary employees
-- Create multiple CTEs
-- Use CASE with AVG()

--------------------------------------------------
-- Revision Complete ✅
--------------------------------------------------
