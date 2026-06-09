-- 🚀 SQL Revision Series - Day 38
-- Topic: Constraints, Keys & Normalization Revision

-- 🎯 Goal:
-- Master Database Design Fundamentals

--------------------------------------------------
-- 🔹 PRIMARY KEY
--------------------------------------------------

CREATE TABLE employees (

    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100)

);

-- Rules:
-- ✅ Unique
-- ✅ Not Null
-- ✅ One Primary Key per table

--------------------------------------------------
-- 🔹 FOREIGN KEY
--------------------------------------------------

CREATE TABLE departments (

    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)

);

CREATE TABLE employees (

    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),

    department_id INT,

    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)

);

--------------------------------------------------
-- 🔹 UNIQUE
--------------------------------------------------

CREATE TABLE users (

    user_id INT PRIMARY KEY,

    email VARCHAR(100)
    UNIQUE

);

-- No duplicate values allowed

--------------------------------------------------
-- 🔹 NOT NULL
--------------------------------------------------

CREATE TABLE students (

    student_id INT PRIMARY KEY,

    student_name VARCHAR(100)
    NOT NULL

);

--------------------------------------------------
-- 🔹 DEFAULT
--------------------------------------------------

CREATE TABLE orders (

    order_id INT PRIMARY KEY,

    order_status VARCHAR(50)
    DEFAULT 'Pending'

);

--------------------------------------------------
-- 🔹 CHECK
--------------------------------------------------

CREATE TABLE employees (

    employee_id INT PRIMARY KEY,

    salary INT,

    CHECK (salary > 0)

);

--------------------------------------------------
-- 🔹 COMBINED CONSTRAINTS
--------------------------------------------------

CREATE TABLE customers (

    customer_id INT PRIMARY KEY,

    email VARCHAR(100)
    UNIQUE
    NOT NULL,

    age INT
    CHECK(age >= 18)

);

--------------------------------------------------
-- 🔹 PRIMARY KEY vs UNIQUE
--------------------------------------------------

-- PRIMARY KEY
-- Unique + Not Null

-- UNIQUE
-- Unique
-- Can allow NULL (DB dependent)

--------------------------------------------------
-- 🔹 FOREIGN KEY Benefits
--------------------------------------------------

-- Maintains referential integrity

-- Prevents:
-- Invalid relationships
-- Orphan records

--------------------------------------------------
-- 🔹 Normalization Quick Revision
--------------------------------------------------

--------------------------------------------------
-- 1NF
--------------------------------------------------

-- Atomic values only

-- ❌ SQL, Python

-- ✅ SQL
-- ✅ Python

--------------------------------------------------
-- 2NF
--------------------------------------------------

-- Remove Partial Dependency

--------------------------------------------------
-- 3NF
--------------------------------------------------

-- Remove Transitive Dependency

--------------------------------------------------
-- Example
--------------------------------------------------

-- student_id
-- city_id
-- city_name

-- city_name depends on city_id

-- Move city to separate table

--------------------------------------------------
-- 🧠 Revision Notes
--------------------------------------------------

-- PRIMARY KEY
-- FOREIGN KEY
-- UNIQUE
-- NOT NULL
-- CHECK
-- DEFAULT

--------------------------------------------------
-- Normalization
--------------------------------------------------

-- 1NF
-- 2NF
-- 3NF

--------------------------------------------------
-- 🔥 Interview Questions
--------------------------------------------------

-- Difference between Primary Key and Unique?

-- Can a table have multiple Unique keys?

-- Can Foreign Key contain NULL?

-- Why normalization is needed?

-- Difference between 2NF and 3NF?

--------------------------------------------------
-- ⚔️ Quick Comparison
--------------------------------------------------

-- PRIMARY KEY
-- Unique + Not Null

-- UNIQUE
-- Unique only

-- FOREIGN KEY
-- Creates relationship

-- CHECK
-- Restricts values

-- DEFAULT
-- Provides default value

--------------------------------------------------
-- 📝 Practice Tasks
--------------------------------------------------

-- Create Student table with constraints

-- Create Customer table with email unique

-- Create Employee-Department relationship

-- Normalize a sample table to 3NF

--------------------------------------------------
-- Revision Complete ✅
--------------------------------------------------
