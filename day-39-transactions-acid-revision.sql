-- 🚀 SQL Revision Series - Day 39
-- Topic: Transactions & ACID Revision

-- 🎯 Goal:
-- Master database transactions and data consistency

--------------------------------------------------
-- 🔹 What is a Transaction?
--------------------------------------------------

-- A transaction is a group of SQL operations
-- executed as a single unit.

-- Example:
-- Bank Transfer

--------------------------------------------------
-- 🔹 Transaction Example
--------------------------------------------------

START TRANSACTION;

UPDATE accounts
SET balance = balance - 1000
WHERE account_id = 1;

UPDATE accounts
SET balance = balance + 1000
WHERE account_id = 2;

COMMIT;

--------------------------------------------------
-- 🔹 COMMIT
--------------------------------------------------

START TRANSACTION;

UPDATE employees
SET salary = salary + 5000
WHERE employee_id = 1;

COMMIT;

-- Changes permanently saved

--------------------------------------------------
-- 🔹 ROLLBACK
--------------------------------------------------

START TRANSACTION;

UPDATE employees
SET salary = salary + 5000
WHERE employee_id = 1;

ROLLBACK;

-- Changes cancelled

--------------------------------------------------
-- 🔹 SAVEPOINT
--------------------------------------------------

START TRANSACTION;

UPDATE employees
SET salary = salary + 1000
WHERE employee_id = 1;

SAVEPOINT salary_update;

UPDATE employees
SET salary = salary + 2000
WHERE employee_id = 2;

ROLLBACK TO salary_update;

COMMIT;

--------------------------------------------------
-- 🔹 ACID Properties
--------------------------------------------------

--------------------------------------------------
-- A = Atomicity
--------------------------------------------------

-- All operations succeed
-- OR none succeed

--------------------------------------------------
-- C = Consistency
--------------------------------------------------

-- Database remains valid

--------------------------------------------------
-- I = Isolation
--------------------------------------------------

-- Transactions don't interfere

--------------------------------------------------
-- D = Durability
--------------------------------------------------

-- Committed data stays saved

--------------------------------------------------
-- 🔹 Isolation Levels
--------------------------------------------------

--------------------------------------------------
-- READ UNCOMMITTED
--------------------------------------------------

SET TRANSACTION ISOLATION LEVEL
READ UNCOMMITTED;

--------------------------------------------------
-- READ COMMITTED
--------------------------------------------------

SET TRANSACTION ISOLATION LEVEL
READ COMMITTED;

--------------------------------------------------
-- REPEATABLE READ
--------------------------------------------------

SET TRANSACTION ISOLATION LEVEL
REPEATABLE READ;

--------------------------------------------------
-- SERIALIZABLE
--------------------------------------------------

SET TRANSACTION ISOLATION LEVEL
SERIALIZABLE;

--------------------------------------------------
-- 🔹 Common Problems
--------------------------------------------------

-- Dirty Read
-- Non-Repeatable Read
-- Phantom Read

--------------------------------------------------
-- 🔹 Deadlock Example
--------------------------------------------------

-- Transaction A locks Row 1

-- Transaction B locks Row 2

-- A waits for Row 2

-- B waits for Row 1

-- Deadlock occurs

--------------------------------------------------
-- 🔹 Preventing Deadlocks
--------------------------------------------------

-- Keep transactions short
-- Use indexes
-- Access resources in same order
-- Avoid long locks

--------------------------------------------------
-- 🔹 Banking Example
--------------------------------------------------

START TRANSACTION;

UPDATE accounts
SET balance = balance - 500
WHERE account_id = 101;

UPDATE accounts
SET balance = balance + 500
WHERE account_id = 102;

COMMIT;

--------------------------------------------------
-- 🧠 Revision Notes
--------------------------------------------------

-- START TRANSACTION
-- COMMIT
-- ROLLBACK
-- SAVEPOINT

--------------------------------------------------
-- ACID
--------------------------------------------------

-- Atomicity
-- Consistency
-- Isolation
-- Durability

--------------------------------------------------
-- 🔥 Interview Questions
--------------------------------------------------

-- What is a transaction?

-- Difference between COMMIT and ROLLBACK?

-- Explain ACID properties.

-- What is a deadlock?

-- Explain isolation levels.

--------------------------------------------------
-- ⚔️ Quick Comparison
--------------------------------------------------

-- COMMIT
-- Save changes

-- ROLLBACK
-- Undo changes

-- SAVEPOINT
-- Partial rollback

--------------------------------------------------
-- 📝 Practice Tasks
--------------------------------------------------

-- Create transaction for bank transfer

-- Use COMMIT after update

-- Use ROLLBACK after delete

-- Create SAVEPOINT

-- Explain ACID with example

--------------------------------------------------
-- Revision Complete ✅
--------------------------------------------------
