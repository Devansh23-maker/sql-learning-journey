-- 🚀 SQL Learning Journey — Day 28
-- Topic: Database Security & User Management

-- 🎯 Goal:
-- Learn how databases control access and protect data

--------------------------------------------------
-- 🔹 Why Database Security Matters?
--------------------------------------------------

-- Security protects against:
-- ❌ Unauthorized access
-- ❌ Data leaks
-- ❌ SQL Injection attacks
-- ❌ Accidental modifications

--------------------------------------------------
-- 🔹 1. Create New User
--------------------------------------------------

CREATE USER 'devansh'@'localhost'
IDENTIFIED BY 'StrongPassword123';

--------------------------------------------------
-- 🔹 2. Grant Permissions
--------------------------------------------------

GRANT SELECT, INSERT
ON company_db.*
TO 'devansh'@'localhost';

-- 👉 User can only read & insert data

--------------------------------------------------
-- 🔹 3. Grant All Privileges
--------------------------------------------------

GRANT ALL PRIVILEGES
ON company_db.*
TO 'admin_user'@'localhost';

--------------------------------------------------
-- 🔹 4. Remove Permissions
--------------------------------------------------

REVOKE INSERT
ON company_db.*
FROM 'devansh'@'localhost';

--------------------------------------------------
-- 🔹 5. Delete User
--------------------------------------------------

DROP USER 'devansh'@'localhost';

--------------------------------------------------
-- 🔹 6. View User Permissions
--------------------------------------------------

SHOW GRANTS FOR 'devansh'@'localhost';

--------------------------------------------------
-- 🔹 7. SQL Injection 🔥
--------------------------------------------------

-- SQL Injection:
-- Malicious SQL code inserted into queries

--------------------------------------------------
-- ❌ Unsafe Query
--------------------------------------------------

-- SELECT *
-- FROM users
-- WHERE username = 'admin'
-- AND password = '1234';

--------------------------------------------------
-- 🔥 SQL Injection Example
--------------------------------------------------

-- Input:
-- ' OR '1'='1

-- Query becomes TRUE
-- Unauthorized login possible

--------------------------------------------------
-- ✅ Prevention Methods
--------------------------------------------------

-- ✅ Use Prepared Statements
-- ✅ Validate user input
-- ✅ Restrict permissions
-- ✅ Use parameterized queries

--------------------------------------------------
-- 🔹 8. Prepared Statement Example
--------------------------------------------------

PREPARE stmt
FROM 'SELECT * FROM users WHERE id = ?';

--------------------------------------------------
-- 🔹 9. Password Security
--------------------------------------------------

-- ✅ Use strong passwords
-- ✅ Encrypt sensitive data
-- ✅ Never store plain-text passwords

--------------------------------------------------
-- 🔹 10. Role-Based Access
--------------------------------------------------

-- Example:
-- HR role → employee data
-- Finance role → salary data

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------

-- CREATE USER
-- GRANT
-- REVOKE
-- SQL Injection
-- Prepared Statements

--------------------------------------------------
-- 🔥 Real-World Uses:
--------------------------------------------------

-- ✅ Enterprise databases
-- ✅ Banking systems
-- ✅ Authentication systems
-- ✅ Cloud databases

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Create user with SELECT access
-- 2. Revoke INSERT permission
-- 3. Explain SQL Injection
-- 4. Prevent SQL Injection attacks

--------------------------------------------------
-- 🔜 Next: SQL Interview Questions Practice (Day 29)
--------------------------------------------------
