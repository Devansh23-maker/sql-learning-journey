-- 🚀 SQL Learning Journey — Day 23
-- Mini Project: Employee Management System

-- 🎯 Goal:
-- Build a real-world employee analytics system

--------------------------------------------------
-- 📊 Create Database
--------------------------------------------------

CREATE DATABASE employee_project;

USE employee_project;

--------------------------------------------------
-- 📊 Create Departments Table
--------------------------------------------------

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

--------------------------------------------------
-- 📊 Create Employees Table
--------------------------------------------------

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    salary DECIMAL(10,2),
    department_id INT,
    joining_date DATE,

    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
);

--------------------------------------------------
-- 📊 Insert Departments
--------------------------------------------------

INSERT INTO departments VALUES
(1, 'Engineering'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');

--------------------------------------------------
-- 📊 Insert Employees
--------------------------------------------------

INSERT INTO employees VALUES
(101, 'Devansh', 85000, 1, '2025-01-10'),
(102, 'Rahul', 60000, 2, '2025-03-15'),
(103, 'Priya', 92000, 1, '2024-11-20'),
(104, 'Aman', 70000, 3, '2025-02-05'),
(105, 'Sneha', 65000, 4, '2025-04-12');

--------------------------------------------------
-- 🔹 1. View All Employees
--------------------------------------------------

SELECT *
FROM employees;

--------------------------------------------------
-- 🔹 2. Highest Salary Employee
--------------------------------------------------

SELECT *
FROM employees

ORDER BY salary DESC
LIMIT 1;

--------------------------------------------------
-- 🔹 3. Average Salary Per Department
--------------------------------------------------

SELECT
    d.department_name,
    AVG(e.salary) AS avg_salary

FROM employees e

JOIN departments d
ON e.department_id = d.department_id

GROUP BY d.department_name;

--------------------------------------------------
-- 🔹 4. Total Employees Per Department
--------------------------------------------------

SELECT
    d.department_name,
    COUNT(*) AS total_employees

FROM employees e

JOIN departments d
ON e.department_id = d.department_id

GROUP BY d.department_name;

--------------------------------------------------
-- 🔹 5. Employees Earning Above Average Salary
--------------------------------------------------

SELECT *
FROM employees

WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

--------------------------------------------------
-- 🔹 6. Rank Employees by Salary
--------------------------------------------------

SELECT
    employee_name,
    salary,

    RANK() OVER (
        ORDER BY salary DESC
    ) AS salary_rank

FROM employees;

--------------------------------------------------
-- 🔹 7. Employees Joined in 2025
--------------------------------------------------

SELECT *
FROM employees

WHERE YEAR(joining_date) = 2025;

--------------------------------------------------
-- 🔹 8. Department-wise Highest Salary
--------------------------------------------------

SELECT
    d.department_name,
    MAX(e.salary) AS highest_salary

FROM employees e

JOIN departments d
ON e.department_id = d.department_id

GROUP BY d.department_name;

--------------------------------------------------
-- 🔹 9. Salary Categories using CASE
--------------------------------------------------

SELECT
    employee_name,
    salary,

    CASE
        WHEN salary >= 90000 THEN 'High'
        WHEN salary >= 70000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category

FROM employees;

--------------------------------------------------
-- 🧠 Concepts Used:
--------------------------------------------------

-- CREATE TABLE
-- INSERT
-- JOIN
-- GROUP BY
-- AVG()
-- COUNT()
-- CASE
-- WINDOW FUNCTIONS
-- SUBQUERIES

--------------------------------------------------
-- 🔥 Real-World Skills:
--------------------------------------------------

-- ✅ HR analytics
-- ✅ Salary analysis
-- ✅ Employee dashboards
-- ✅ Department reports

--------------------------------------------------
-- 📝 Practice Tasks:
--------------------------------------------------

-- 1. Find lowest salary employee
-- 2. Count employees joined in 2025
-- 3. Find department with highest avg salary
-- 4. Find top 3 highest paid employees

--------------------------------------------------
-- 🔜 Next: E-Commerce SQL Project (Day 24)
--------------------------------------------------
