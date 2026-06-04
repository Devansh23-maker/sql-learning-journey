-- 🚀 SQL Revision Series - Day 33
-- Topic: JOINS Revision

-- 🎯 Goal:
-- Master INNER, LEFT, RIGHT and SELF JOIN

--------------------------------------------------
-- Sample Tables
--------------------------------------------------

-- employees
-- employee_id
-- employee_name
-- department_id

-- departments
-- department_id
-- department_name

--------------------------------------------------
-- 🔹 1. INNER JOIN
--------------------------------------------------

SELECT
    e.employee_name,
    d.department_name

FROM employees e

INNER JOIN departments d
ON e.department_id = d.department_id;

-- Returns only matching records

--------------------------------------------------
-- 🔹 2. LEFT JOIN
--------------------------------------------------

SELECT
    e.employee_name,
    d.department_name

FROM employees e

LEFT JOIN departments d
ON e.department_id = d.department_id;

-- Returns all employees
-- NULL if no matching department

--------------------------------------------------
-- 🔹 3. RIGHT JOIN
--------------------------------------------------

SELECT
    e.employee_name,
    d.department_name

FROM employees e

RIGHT JOIN departments d
ON e.department_id = d.department_id;

-- Returns all departments
-- NULL if no matching employee

--------------------------------------------------
-- 🔹 4. SELF JOIN
--------------------------------------------------

-- employee_id
-- employee_name
-- manager_id

SELECT
    e.employee_name AS Employee,
    m.employee_name AS Manager

FROM employees e

LEFT JOIN employees m
ON e.manager_id = m.employee_id;

--------------------------------------------------
-- 🔹 5. JOIN + WHERE
--------------------------------------------------

SELECT
    e.employee_name,
    d.department_name

FROM employees e

INNER JOIN departments d
ON e.department_id = d.department_id

WHERE d.department_name = 'Engineering';

--------------------------------------------------
-- 🔹 6. JOIN + GROUP BY
--------------------------------------------------

SELECT
    d.department_name,
    COUNT(*) AS total_employees

FROM employees e

INNER JOIN departments d
ON e.department_id = d.department_id

GROUP BY d.department_name;

--------------------------------------------------
-- 🔹 7. Multiple Joins
--------------------------------------------------

SELECT
    e.employee_name,
    d.department_name,
    l.city_name

FROM employees e

JOIN departments d
ON e.department_id = d.department_id

JOIN locations l
ON d.location_id = l.location_id;

--------------------------------------------------
-- 🔥 INNER vs LEFT JOIN
--------------------------------------------------

-- INNER JOIN
-- Only matching rows

-- LEFT JOIN
-- All rows from left table

--------------------------------------------------
-- 🧠 Revision Notes
--------------------------------------------------

-- INNER JOIN -> Matching rows only
-- LEFT JOIN -> All left table rows
-- RIGHT JOIN -> All right table rows
-- SELF JOIN -> Same table joins itself

--------------------------------------------------
-- 🔥 Interview Questions
--------------------------------------------------

-- Difference between INNER and LEFT JOIN?
-- What is SELF JOIN?
-- Can we join more than 2 tables?
-- What happens when no match exists?

--------------------------------------------------
-- 📝 Practice Tasks
--------------------------------------------------

-- Get all employees with departments
-- Find employees without department
-- Count employees per department
-- Find employee-manager pairs
-- Join 3 tables together

--------------------------------------------------
-- Revision Complete ✅
--------------------------------------------------
