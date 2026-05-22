-- 🚀 SQL Learning Journey — Day 26
-- Topic: Isolation Levels & Deadlocks

-- 🎯 Goal:
-- Understand how databases handle multiple transactions safely

--------------------------------------------------
-- 🔹 What is Concurrency?
--------------------------------------------------

-- Concurrency means:
-- Multiple users accessing database simultaneously

-- Example:
-- Two users updating same bank account

--------------------------------------------------
-- 🔹 Common Transaction Problems
--------------------------------------------------

-- ❌ Dirty Read
-- ❌ Non-Repeatable Read
-- ❌ Phantom Read

--------------------------------------------------
-- 🔹 1. Dirty Read
--------------------------------------------------

-- Reading uncommitted data

-- Example:
-- Transaction A updates salary
-- Transaction B reads updated value
-- Transaction A rolls back

-- 👉 Transaction B read invalid data

--------------------------------------------------
-- 🔹 2. Non-Repeatable Read
--------------------------------------------------

-- Same query gives different result
-- inside same transaction

--------------------------------------------------
-- 🔹 3. Phantom Read
--------------------------------------------------

-- New rows appear during transaction

--------------------------------------------------
-- 🔹 Isolation Levels 🔥
--------------------------------------------------

--------------------------------------------------
-- 🔹 4. READ UNCOMMITTED
--------------------------------------------------

SET TRANSACTION ISOLATION LEVEL
READ UNCOMMITTED;

-- Fastest
-- Allows dirty reads

--------------------------------------------------
-- 🔹 5. READ COMMITTED
--------------------------------------------------

SET TRANSACTION ISOLATION LEVEL
READ COMMITTED;

-- Prevents dirty reads

--------------------------------------------------
-- 🔹 6. REPEATABLE READ
--------------------------------------------------

SET TRANSACTION ISOLATION LEVEL
REPEATABLE READ;

-- Prevents non-repeatable reads

--------------------------------------------------
-- 🔹 7. SERIALIZABLE
--------------------------------------------------

SET TRANSACTION ISOLATION LEVEL
SERIALIZABLE;

-- Safest level
-- Slowest performance

--------------------------------------------------
-- 🔥 Isolation Level Summary
--------------------------------------------------

-- READ UNCOMMITTED → fastest, least safe
-- READ COMMITTED → common default
-- REPEATABLE READ → more consistency
-- SERIALIZABLE → highest consistency

--------------------------------------------------
-- 🔹 8. Deadlock
--------------------------------------------------

-- Deadlock occurs when:
-- Two transactions wait for each other forever

--------------------------------------------------
-- 🔹 Deadlock Example
--------------------------------------------------

-- Transaction A locks row 1
-- Transaction B locks row 2

-- A waits for row 2
-- B waits for row 1

-- 👉 Deadlock happens

--------------------------------------------------
-- 🔹 Preventing Deadlocks
--------------------------------------------------

-- ✅ Keep transactions short
-- ✅ Access tables in same order
-- ✅ Use proper indexes
-- ✅ Avoid unnecessary locks

--------------------------------------------------
-- 🔹 9. Locking Example
--------------------------------------------------

START TRANSACTION;

SELECT *
FROM employees
WHERE employee_id = 1
FOR UPDATE;

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------

-- Isolation Levels
-- Dirty Read
-- Phantom Read
-- Deadlock
-- Concurrency Control

--------------------------------------------------
-- 🔥 Real-World Uses:
--------------------------------------------------

-- ✅ Banking systems
-- ✅ Ticket booking systems
-- ✅ Payment gateways
-- ✅ Multi-user applications

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Explain dirty read
-- 2. Difference between isolation levels
-- 3. What causes deadlock?
-- 4. Prevent deadlocks using best practices

--------------------------------------------------
-- 🔜 Next: Database Backup & Recovery (Day 27)
--------------------------------------------------
