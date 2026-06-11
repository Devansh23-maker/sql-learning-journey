-- 🚀 SQL Master Revision - Day 40
-- Final SQL Interview Preparation

-- 🎯 Goal:
-- Revise the most important SQL interview questions

--------------------------------------------------
-- Q1. Find Highest Salary
--------------------------------------------------

SELECT MAX(salary)
FROM employees;

--------------------------------------------------
-- Q2. Find Second Highest Salary
--------------------------------------------------

SELECT MAX(salary)
FROM employees

WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);

--------------------------------------------------
-- Q3. Find Third Highest Salary
--------------------------------------------------

SELECT DISTINCT salary

FROM employees e1

WHERE 3 = (
    SELECT COUNT(DISTINCT salary)
    FROM employees e2
    WHERE e2.salary > e1.salary
) + 1;

--------------------------------------------------
-- Q4. Employees Above Average Salary
--------------------------------------------------

SELECT *
FROM employees

WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

--------------------------------------------------
-- Q5. Duplicate Records
--------------------------------------------------

SELECT
    employee_name,
    COUNT(*)

FROM employees

GROUP BY employee_name

HAVING COUNT(*) > 1;

--------------------------------------------------
-- Q6. Highest Salary Per Department
--------------------------------------------------

SELECT
    department,
    MAX(salary)

FROM employees

GROUP BY department;

--------------------------------------------------
-- Q7. Employee Count Per Department
--------------------------------------------------

SELECT
    department,
    COUNT(*)

FROM employees

GROUP BY department;

--------------------------------------------------
-- Q8. INNER JOIN
--------------------------------------------------

SELECT
    e.employee_name,
    d.department_name

FROM employees e

JOIN departments d
ON e.department_id = d.department_id;

--------------------------------------------------
-- Q9. LEFT JOIN
--------------------------------------------------

SELECT
    e.employee_name,
    d.department_name

FROM employees e

LEFT JOIN departments d
ON e.department_id = d.department_id;

--------------------------------------------------
-- Q10. ROW_NUMBER()
--------------------------------------------------

SELECT
    employee_name,

    ROW_NUMBER() OVER (
        ORDER BY salary DESC
    )

FROM employees;

--------------------------------------------------
-- Q11. RANK()
--------------------------------------------------

SELECT
    employee_name,

    RANK() OVER (
        ORDER BY salary DESC
    )

FROM employees;

--------------------------------------------------
-- Q12. DENSE_RANK()
--------------------------------------------------

SELECT
    employee_name,

    DENSE_RANK() OVER (
        ORDER BY salary DESC
    )

FROM employees;

--------------------------------------------------
-- Q13. Top 3 Employees Per Department
--------------------------------------------------

SELECT *

FROM (

    SELECT
        employee_name,
        department,

        DENSE_RANK() OVER (
            PARTITION BY department
            ORDER BY salary DESC
        ) rnk

    FROM employees

) t

WHERE rnk <= 3;

--------------------------------------------------
-- Q14. CTE
--------------------------------------------------

WITH high_salary AS (

    SELECT *
    FROM employees
    WHERE salary > 70000

)

SELECT *
FROM high_salary;

--------------------------------------------------
-- Q15. CASE Statement
--------------------------------------------------

SELECT
    employee_name,

    CASE
        WHEN salary >= 100000
        THEN 'Excellent'

        WHEN salary >= 70000
        THEN 'Good'

        ELSE 'Average'
    END

FROM employees;

--------------------------------------------------
-- Q16. EXISTS
--------------------------------------------------

SELECT *
FROM departments d

WHERE EXISTS (

    SELECT 1
    FROM employees e

    WHERE e.department_id =
          d.department_id

);

--------------------------------------------------
-- Q17. String Functions
--------------------------------------------------

SELECT
    UPPER(employee_name),
    LENGTH(employee_name)

FROM employees;

--------------------------------------------------
-- Q18. Date Functions
--------------------------------------------------

SELECT
    DATEDIFF(
        CURDATE(),
        joining_date
    )

FROM employees;

--------------------------------------------------
-- Q19. Transaction
--------------------------------------------------

START TRANSACTION;

UPDATE employees
SET salary = salary + 1000
WHERE employee_id = 1;

COMMIT;

--------------------------------------------------
-- Q20. Index
--------------------------------------------------

CREATE INDEX idx_salary
ON employees(salary);

--------------------------------------------------
-- 🎯 Top Theory Questions
--------------------------------------------------

-- What is JOIN?
-- Difference between WHERE and HAVING?
-- Difference between RANK and DENSE_RANK?
-- What is CTE?
-- What is Index?
-- What is Normalization?
-- Explain ACID.
-- Difference between Primary Key and Foreign Key?
-- What is a Trigger?
-- What is a Stored Procedure?

--------------------------------------------------
-- 🏆 SQL Interview Checklist
--------------------------------------------------

-- ✅ SELECT
-- ✅ WHERE
-- ✅ GROUP BY
-- ✅ HAVING
-- ✅ JOINS
-- ✅ Subqueries
-- ✅ Window Functions
-- ✅ CTE
-- ✅ CASE
-- ✅ Transactions
-- ✅ Indexes
-- ✅ Constraints
-- ✅ Security

--------------------------------------------------
-- 🎉 Congratulations
--------------------------------------------------

-- SQL Learning Journey Completed

-- Days 1-30 = Learning
-- Days 31-40 = Revision

-- Total = 40 Days SQL Mastery Journey

--------------------------------------------------
-- 🚀 Next Journey
--------------------------------------------------

-- PostgreSQL
-- Advanced SQL Projects
-- Power BI
-- Data Engineering
-- ETL Pipelines
-- Data Warehousing
--------------------------------------------------
