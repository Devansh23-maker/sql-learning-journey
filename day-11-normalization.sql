-- 🚀 SQL Learning Journey — Day 11
-- Topic: Normalization (1NF, 2NF, 3NF)

-- 🎯 Goal:
-- Learn how to organize data properly
-- and reduce redundancy

--------------------------------------------------
-- 🔹 What is Normalization?
--------------------------------------------------

-- Normalization is the process of:
-- ✅ Reducing duplicate data
-- ✅ Improving data consistency
-- ✅ Organizing tables properly

--------------------------------------------------
-- 🔹 Example of Unnormalized Table
--------------------------------------------------

-- Bad Table Design ❌

-- student_id | student_name | subjects
-- -------------------------------------
-- 1          | Devansh      | SQL, Python
-- 2          | Rahul        | Java, C++

-- Problem:
-- Multiple values in one column

--------------------------------------------------
-- 🔹 1NF (First Normal Form)
--------------------------------------------------

-- Rule:
-- Each column should contain atomic values
-- (single value only)

-- Good Design ✅

-- student_id | student_name | subject
-- -----------------------------------
-- 1          | Devansh      | SQL
-- 1          | Devansh      | Python
-- 2          | Rahul        | Java
-- 2          | Rahul        | C++

--------------------------------------------------
-- 🔹 2NF (Second Normal Form)
--------------------------------------------------

-- Rule:
-- Table must be in 1NF
-- No partial dependency

-- Example Problem ❌

-- student_id | course_id | student_name | course_name
-- ---------------------------------------------------
-- 1          | 101       | Devansh      | SQL

-- student_name depends only on student_id
-- course_name depends only on course_id

-- Solution ✅
-- Split tables

-- Students Table
-- student_id | student_name

-- Courses Table
-- course_id | course_name

--------------------------------------------------
-- 🔹 3NF (Third Normal Form)
--------------------------------------------------

-- Rule:
-- No transitive dependency

-- Example ❌

-- student_id | city_id | city_name
-- --------------------------------
-- 1          | 101     | Jaipur

-- city_name depends on city_id,
-- not directly on student_id

-- Solution ✅

-- Students Table
-- student_id | city_id

-- Cities Table
-- city_id | city_name

--------------------------------------------------
-- 🔹 Benefits of Normalization
--------------------------------------------------

-- ✅ Reduces redundancy
-- ✅ Saves storage
-- ✅ Improves consistency
-- ✅ Easier maintenance

--------------------------------------------------
-- 🔹 Disadvantages
--------------------------------------------------

-- ❌ More joins required
-- ❌ Complex queries sometimes

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------

-- 1NF → Atomic values
-- 2NF → Remove partial dependency
-- 3NF → Remove transitive dependency

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Convert table to 1NF
-- 2. Identify partial dependency
-- 3. Identify transitive dependency
-- 4. Split tables into 3NF

--------------------------------------------------
-- 🔜 Next: Transactions & ACID Properties (Day 12)
--------------------------------------------------
