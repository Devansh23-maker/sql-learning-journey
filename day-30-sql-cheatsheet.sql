-- 🚀 SQL Learning Journey — Day 30
-- Ultimate SQL Cheat Sheet

-- 🎯 Goal:
-- Quick revision of everything learned in 30 days

--------------------------------------------------
-- 🔹 DATABASE COMMANDS
--------------------------------------------------

CREATE DATABASE company_db;
DROP DATABASE company_db;
USE company_db;

--------------------------------------------------
-- 🔹 TABLE COMMANDS
--------------------------------------------------

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10,2)
);

ALTER TABLE employees
ADD city VARCHAR(50);

DROP TABLE employees;

--------------------------------------------------
-- 🔹 CRUD OPERATIONS
--------------------------------------------------

-- INSERT
INSERT INTO employees
VALUES (1, 'Devansh', 50000);

-- SELECT
SELECT * FROM employees;

-- UPDATE
UPDATE employees
SET salary = 60000
WHERE id = 1;

-- DELETE
DELETE FROM employees
WHERE id = 1;

--------------------------------------------------
-- 🔹 FILTERING
--------------------------------------------------

SELECT *
FROM employees
WHERE salary > 50000;

SELECT *
FROM employees
WHERE city IN ('Delhi', 'Mumbai');

SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 100000;

SELECT *
FROM employees
WHERE name LIKE 'D%';

--------------------------------------------------
-- 🔹 SORTING
--------------------------------------------------

SELECT *
FROM employees
ORDER BY salary DESC;

LIMIT 5;

--------------------------------------------------
-- 🔹 AGGREGATE FUNCTIONS
--------------------------------------------------

SELECT COUNT(*) FROM employees;
SELECT SUM(salary) FROM employees;
SELECT AVG(salary) FROM employees;
SELECT MAX(salary) FROM employees;
SELECT MIN(salary) FROM employees;

--------------------------------------------------
-- 🔹 GROUP BY & HAVING
--------------------------------------------------

SELECT
    city,
    COUNT(*)
FROM employees

GROUP BY city

HAVING COUNT(*) > 1;

--------------------------------------------------
-- 🔹 JOINS
--------------------------------------------------

SELECT *
FROM employees e

INNER JOIN departments d
ON e.department_id = d.department_id;

-- LEFT JOIN
-- RIGHT JOIN
-- SELF JOIN

--------------------------------------------------
-- 🔹 SUBQUERIES
--------------------------------------------------

SELECT *
FROM employees

WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

--------------------------------------------------
-- 🔹 WINDOW FUNCTIONS
--------------------------------------------------

SELECT
    name,
    salary,

    RANK() OVER (
        ORDER BY salary DESC
    ) AS salary_rank

FROM employees;

--------------------------------------------------
-- 🔹 CTE
--------------------------------------------------

WITH high_salary AS (
    SELECT *
    FROM employees
    WHERE salary > 70000
)

SELECT *
FROM high_salary;

--------------------------------------------------
-- 🔹 CASE
--------------------------------------------------

SELECT
    name,

    CASE
        WHEN salary > 80000 THEN 'High'
        ELSE 'Normal'
    END AS category

FROM employees;

--------------------------------------------------
-- 🔹 UNION
--------------------------------------------------

SELECT name FROM table1

UNION

SELECT name FROM table2;

--------------------------------------------------
-- 🔹 EXISTS
--------------------------------------------------

SELECT *
FROM departments d

WHERE EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);

--------------------------------------------------
-- 🔹 STRING FUNCTIONS
--------------------------------------------------

SELECT UPPER(name);
SELECT LOWER(name);
SELECT LENGTH(name);
SELECT CONCAT(name, city);
SELECT SUBSTRING(name,1,3);

--------------------------------------------------
-- 🔹 DATE FUNCTIONS
--------------------------------------------------

SELECT NOW();
SELECT CURDATE();
SELECT DATEDIFF('2026-12-31','2026-01-01');

--------------------------------------------------
-- 🔹 VIEWS
--------------------------------------------------

CREATE VIEW high_salary AS
SELECT *
FROM employees
WHERE salary > 70000;

--------------------------------------------------
-- 🔹 INDEXES
--------------------------------------------------

CREATE INDEX idx_salary
ON employees(salary);

--------------------------------------------------
-- 🔹 TRANSACTIONS
--------------------------------------------------

START TRANSACTION;

UPDATE employees
SET salary = salary + 1000
WHERE id = 1;

COMMIT;

ROLLBACK;

--------------------------------------------------
-- 🔹 STORED PROCEDURES
--------------------------------------------------

CALL get_employees();

--------------------------------------------------
-- 🔹 TRIGGERS
--------------------------------------------------

-- BEFORE INSERT
-- AFTER INSERT
-- BEFORE UPDATE
-- BEFORE DELETE

--------------------------------------------------
-- 🔹 KEYS & CONSTRAINTS
--------------------------------------------------

-- PRIMARY KEY
-- FOREIGN KEY
-- UNIQUE
-- NOT NULL
-- CHECK
-- DEFAULT

--------------------------------------------------
-- 🔹 NORMALIZATION
--------------------------------------------------

-- 1NF
-- 2NF
-- 3NF

--------------------------------------------------
-- 🔹 OPTIMIZATION
--------------------------------------------------

EXPLAIN
SELECT *
FROM employees
WHERE salary > 50000;

--------------------------------------------------
-- 🔹 SECURITY
--------------------------------------------------

CREATE USER 'user1'@'localhost'
IDENTIFIED BY 'password';

GRANT SELECT
ON company_db.*
TO 'user1'@'localhost';

--------------------------------------------------
-- 🔥 TOP INTERVIEW QUESTIONS
--------------------------------------------------

-- Second Highest Salary
-- Highest Salary Per Department
-- Duplicate Records
-- Ranking Queries
-- Joins
-- Subqueries
-- Window Functions

--------------------------------------------------
-- 🎉 Congratulations!
--------------------------------------------------

-- Completed 30 Days of SQL Learning

-- Topics Covered:
-- ✅ SQL Basics
-- ✅ Intermediate SQL
-- ✅ Advanced SQL
-- ✅ Database Concepts
-- ✅ Performance Optimization
-- ✅ Security
-- ✅ Interview Preparation

--------------------------------------------------
-- 🚀 Next Learning Path
--------------------------------------------------

-- PostgreSQL
-- Advanced SQL Projects
-- Data Analytics
-- Power BI
-- Data Engineering
-- ETL Pipelines
