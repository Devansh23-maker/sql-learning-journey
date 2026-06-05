-- 🚀 SQL Revision Series - Day 34
-- Topic: Subqueries Revision

-- 🎯 Goal:
-- Master Nested Queries & Interview Questions

--------------------------------------------------
-- Sample Table: employees
--------------------------------------------------

-- employee_id
-- employee_name
-- department
-- salary

--------------------------------------------------
-- 🔹 1. Simple Subquery
--------------------------------------------------

SELECT *
FROM employees

WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- Employees earning above average salary

--------------------------------------------------
-- 🔹 2. Second Highest Salary
--------------------------------------------------

SELECT MAX(salary) AS second_highest

FROM employees

WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);

--------------------------------------------------
-- 🔹 3. Lowest Salary
--------------------------------------------------

SELECT *
FROM employees

WHERE salary = (
    SELECT MIN(salary)
    FROM employees
);

--------------------------------------------------
-- 🔹 4. Department with Highest Salary
--------------------------------------------------

SELECT *
FROM employees

WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);

--------------------------------------------------
-- 🔹 5. IN Subquery
--------------------------------------------------

SELECT *
FROM employees

WHERE department IN (
    SELECT department
    FROM employees
    GROUP BY department
    HAVING AVG(salary) > 70000
);

--------------------------------------------------
-- 🔹 6. EXISTS
--------------------------------------------------

SELECT *
FROM departments d

WHERE EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);

--------------------------------------------------
-- 🔹 7. NOT EXISTS
--------------------------------------------------

SELECT *
FROM departments d

WHERE NOT EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);

--------------------------------------------------
-- 🔹 8. Correlated Subquery
--------------------------------------------------

SELECT
    employee_name,
    salary,
    department

FROM employees e1

WHERE salary > (
    SELECT AVG(salary)
    FROM employees e2
    WHERE e1.department = e2.department
);

-- Above department average salary

--------------------------------------------------
-- 🔹 9. Subquery in SELECT
--------------------------------------------------

SELECT
    employee_name,
    salary,

    (
        SELECT AVG(salary)
        FROM employees
    ) AS company_avg

FROM employees;

--------------------------------------------------
-- 🔹 10. Nth Highest Salary
--------------------------------------------------

SELECT DISTINCT salary

FROM employees e1

WHERE 3 = (
    SELECT COUNT(DISTINCT salary)
    FROM employees e2
    WHERE e2.salary > e1.salary
) + 1;

--------------------------------------------------
-- 🧠 Revision Notes
--------------------------------------------------

-- Subquery = Query inside query
-- EXISTS = Checks row existence
-- IN = Checks values
-- Correlated = Depends on outer query

--------------------------------------------------
-- 🔥 Interview Questions
--------------------------------------------------

-- Find second highest salary
-- Find third highest salary
-- Employees above average salary
-- Departments above average salary
-- EXISTS vs IN

--------------------------------------------------
-- ⚔️ EXISTS vs IN
--------------------------------------------------

-- IN:
-- Good for small datasets

-- EXISTS:
-- Better for large datasets

--------------------------------------------------
-- 📝 Practice Tasks
--------------------------------------------------

-- Find employees below average salary
-- Find highest salary per department
-- Find departments with no employees
-- Find fourth highest salary
-- Find employees above department average

--------------------------------------------------
-- Revision Complete ✅
--------------------------------------------------
