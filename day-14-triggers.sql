-- 🚀 SQL Learning Journey — Day 14
-- Topic: Triggers

-- 🎯 Goal:
-- Learn how databases automatically execute actions

--------------------------------------------------
-- 🔹 What is a Trigger?
--------------------------------------------------

-- A trigger is a block of SQL code
-- that automatically runs when:
-- ✅ INSERT happens
-- ✅ UPDATE happens
-- ✅ DELETE happens

--------------------------------------------------
-- 📊 Sample Tables
--------------------------------------------------

-- students table
-- id, name, marks

-- audit_log table
-- log_message

--------------------------------------------------
-- 🔹 1. Create Audit Table
--------------------------------------------------

CREATE TABLE audit_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    log_message VARCHAR(255)
);

--------------------------------------------------
-- 🔹 2. BEFORE INSERT Trigger
--------------------------------------------------

DELIMITER //

CREATE TRIGGER before_student_insert
BEFORE INSERT
ON students
FOR EACH ROW
BEGIN
    INSERT INTO audit_log(log_message)
    VALUES ('New student record will be inserted');
END //

DELIMITER ;

--------------------------------------------------
-- 🔹 3. AFTER INSERT Trigger
--------------------------------------------------

DELIMITER //

CREATE TRIGGER after_student_insert
AFTER INSERT
ON students
FOR EACH ROW
BEGIN
    INSERT INTO audit_log(log_message)
    VALUES ('New student record inserted successfully');
END //

DELIMITER ;

--------------------------------------------------
-- 🔹 4. BEFORE UPDATE Trigger
--------------------------------------------------

DELIMITER //

CREATE TRIGGER before_marks_update
BEFORE UPDATE
ON students
FOR EACH ROW
BEGIN
    INSERT INTO audit_log(log_message)
    VALUES ('Student marks are being updated');
END //

DELIMITER ;

--------------------------------------------------
-- 🔹 5. BEFORE DELETE Trigger
--------------------------------------------------

DELIMITER //

CREATE TRIGGER before_student_delete
BEFORE DELETE
ON students
FOR EACH ROW
BEGIN
    INSERT INTO audit_log(log_message)
    VALUES ('Student record will be deleted');
END //

DELIMITER ;

--------------------------------------------------
-- 🔹 6. Drop Trigger
--------------------------------------------------

DROP TRIGGER before_student_insert;

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------

-- BEFORE trigger
-- AFTER trigger
-- INSERT / UPDATE / DELETE triggers
-- FOR EACH ROW

--------------------------------------------------
-- 🔥 Real-World Uses:
--------------------------------------------------

-- ✅ Audit logs
-- ✅ Automatic validation
-- ✅ Security tracking
-- ✅ Notifications

--------------------------------------------------
-- ⚠️ Important Notes:
--------------------------------------------------

-- Too many triggers can slow database
-- Use carefully in production systems

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Create AFTER INSERT trigger
-- 2. Create BEFORE DELETE trigger
-- 3. Insert logs automatically
-- 4. Drop a trigger

--------------------------------------------------
-- 🔜 Next: Window Functions (Day 15)
--------------------------------------------------
