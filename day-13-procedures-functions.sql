-- 🚀 SQL Learning Journey — Day 13
-- Topic: Stored Procedures & Functions

-- 🎯 Goal:
-- Learn reusable SQL logic using procedures and functions

--------------------------------------------------
-- 🔹 What is a Stored Procedure?
--------------------------------------------------

-- A stored procedure is a saved SQL block
-- that can be executed multiple times.

--------------------------------------------------
-- 🔹 1. Simple Stored Procedure
--------------------------------------------------

DELIMITER //

CREATE PROCEDURE get_students()
BEGIN
    SELECT * FROM students;
END //

DELIMITER ;

-- Execute Procedure
CALL get_students();

--------------------------------------------------
-- 🔹 2. Procedure with Parameter
--------------------------------------------------

DELIMITER //

CREATE PROCEDURE get_student_by_id(IN student_id INT)
BEGIN
    SELECT *
    FROM students
    WHERE id = student_id;
END //

DELIMITER ;

-- Execute
CALL get_student_by_id(1);

--------------------------------------------------
-- 🔹 3. Procedure with UPDATE
--------------------------------------------------

DELIMITER //

CREATE PROCEDURE update_marks(
    IN student_id INT,
    IN new_marks INT
)
BEGIN
    UPDATE students
    SET marks = new_marks
    WHERE id = student_id;
END //

DELIMITER ;

--------------------------------------------------
-- 🔹 4. What is a Function?
--------------------------------------------------

-- Function returns a value

--------------------------------------------------
-- 🔹 5. Simple Function
--------------------------------------------------

DELIMITER //

CREATE FUNCTION bonus_marks(marks INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN marks + 5;
END //

DELIMITER ;

-- Use Function
SELECT name, marks, bonus_marks(marks)
FROM students;

--------------------------------------------------
-- 🔹 6. Difference: Procedure vs Function
--------------------------------------------------

-- Procedure:
-- ✅ Can perform actions
-- ✅ May or may not return value

-- Function:
-- ✅ Must return a value
-- ✅ Used inside queries

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------

-- CREATE PROCEDURE
-- CALL procedure_name()
-- CREATE FUNCTION
-- RETURN keyword

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Create procedure to show all students
-- 2. Create procedure with parameter
-- 3. Create function to add bonus marks
-- 4. Call procedure using CALL

--------------------------------------------------
-- 🔜 Next: Triggers (Day 14)
--------------------------------------------------
