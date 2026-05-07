-- 🚀 SQL Learning Journey — Day 12
-- Topic: Transactions & ACID Properties

-- 🎯 Goal:
-- Learn how databases safely handle operations

--------------------------------------------------
-- 🔹 What is a Transaction?
--------------------------------------------------

-- A transaction is a group of SQL operations
-- executed as a single unit.

-- Example:
-- Transfer money from one account to another

--------------------------------------------------
-- 🔹 Example Transaction
--------------------------------------------------

START TRANSACTION;

UPDATE accounts
SET balance = balance - 1000
WHERE id = 1;

UPDATE accounts
SET balance = balance + 1000
WHERE id = 2;

COMMIT;

-- 👉 Money transferred successfully

--------------------------------------------------
-- 🔹 ROLLBACK
--------------------------------------------------

START TRANSACTION;

UPDATE accounts
SET balance = balance - 500
WHERE id = 1;

ROLLBACK;

-- 👉 Changes cancelled

--------------------------------------------------
-- 🔹 SAVEPOINT
--------------------------------------------------

START TRANSACTION;

UPDATE students
SET marks = 90
WHERE id = 1;

SAVEPOINT before_update;

UPDATE students
SET marks = 50
WHERE id = 1;

ROLLBACK TO before_update;

COMMIT;

--------------------------------------------------
-- 🔹 ACID Properties 🔥
--------------------------------------------------

--------------------------------------------------
-- A → Atomicity
--------------------------------------------------

-- Either all operations happen
-- OR none happen

-- Example:
-- Money should not disappear midway

--------------------------------------------------
-- C → Consistency
--------------------------------------------------

-- Database remains valid before & after transaction

--------------------------------------------------
-- I → Isolation
--------------------------------------------------

-- Multiple transactions should not interfere

--------------------------------------------------
-- D → Durability
--------------------------------------------------

-- Once committed,
-- data remains saved permanently

--------------------------------------------------
-- 🔹 Real-World Example
--------------------------------------------------

-- ATM withdrawal
-- Online payment
-- Ticket booking system

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------

-- START TRANSACTION
-- COMMIT
-- ROLLBACK
-- SAVEPOINT
-- ACID Properties

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Create a transaction for money transfer
-- 2. Use rollback after update
-- 3. Explain ACID properties
-- 4. Use savepoint in transaction

--------------------------------------------------
-- 🔜 Next: Stored Procedures & Functions (Day 13)
--------------------------------------------------
