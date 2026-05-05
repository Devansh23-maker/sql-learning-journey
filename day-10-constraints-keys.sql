-- 🚀 SQL Learning Journey — Day 10
-- Topic: Constraints & Keys

-- 🎯 Goal:
-- Understand rules that maintain data integrity

--------------------------------------------------
-- 🔹 1. PRIMARY KEY 🔑
--------------------------------------------------

-- Unique + Not NULL
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);

-- 👉 Each row must have a unique id

--------------------------------------------------
-- 🔹 2. NOT NULL
--------------------------------------------------

CREATE TABLE users (
    id INT,
    name VARCHAR(50) NOT NULL
);

-- 👉 name cannot be NULL

--------------------------------------------------
-- 🔹 3. UNIQUE
--------------------------------------------------

CREATE TABLE employees (
    id INT,
    email VARCHAR(100) UNIQUE
);

-- 👉 No duplicate emails allowed

--------------------------------------------------
-- 🔹 4. DEFAULT
--------------------------------------------------

CREATE TABLE orders (
    id INT,
    status VARCHAR(20) DEFAULT 'pending'
);

-- 👉 If no value given → 'pending' used

--------------------------------------------------
-- 🔹 5. CHECK
--------------------------------------------------

CREATE TABLE marks_table (
    id INT,
    marks INT CHECK (marks >= 0 AND marks <= 100)
);

-- 👉 Restricts value range

--------------------------------------------------
-- 🔹 6. FOREIGN KEY 🔗
--------------------------------------------------

-- Parent table
CREATE TABLE cities (
    city_id INT PRIMARY KEY,
    city_name VARCHAR(50)
);

-- Child table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    city_id INT,
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);

-- 👉 Ensures relationship between tables

--------------------------------------------------
-- 🔹 7. COMBINED CONSTRAINTS
--------------------------------------------------

CREATE TABLE users (
    id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT CHECK (age >= 18)
);

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------
-- PRIMARY KEY → unique + not null
-- FOREIGN KEY → relation between tables
-- UNIQUE → no duplicates
-- NOT NULL → must have value
-- CHECK → restrict values
-- DEFAULT → default value

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Create table with primary key
-- 2. Add NOT NULL constraint
-- 3. Create foreign key relationship
-- 4. Add CHECK for age > 18

--------------------------------------------------
-- 🔜 Next: Normalization (Day 11)
--------------------------------------------------
