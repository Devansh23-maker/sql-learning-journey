-- 🚀 SQL Learning Journey — Day 4
-- Topic: LIKE, IN, BETWEEN (Advanced Filtering)

-- 🎯 Goal:
-- Learn smarter ways to filter data using patterns, lists, and ranges

-- 📊 Sample Table: students
-- Columns: id, name, marks, city

--------------------------------------------------
-- 🔹 1. LIKE (Pattern Matching)
--------------------------------------------------

-- Names starting with 'A'
SELECT *
FROM students
WHERE name LIKE 'A%';

-- Names ending with 'h'
SELECT *
FROM students
WHERE name LIKE '%h';

-- Names containing 'an'
SELECT *
FROM students
WHERE name LIKE '%an%';

-- Names with exactly 5 characters
SELECT *
FROM students
WHERE name LIKE '_____';

-- 🧠 Symbols:
-- % → any number of characters
-- _ → exactly one character

--------------------------------------------------
-- 🔹 2. IN (Multiple Values Shortcut)
--------------------------------------------------

-- Students from Delhi, Mumbai, Jaipur
SELECT *
FROM students
WHERE city IN ('Delhi', 'Mumbai', 'Jaipur');

-- Same query using OR (not recommended)
SELECT *
FROM students
WHERE city = 'Delhi' OR city = 'Mumbai' OR city = 'Jaipur';

--------------------------------------------------
-- 🔹 3. BETWEEN (Range Filtering)
--------------------------------------------------

-- Students with marks between 70 and 90
SELECT *
FROM students
WHERE marks BETWEEN 70 AND 90;

-- Same using AND
SELECT *
FROM students
WHERE marks >= 70 AND marks <= 90;

--------------------------------------------------
-- 🔹 4. NOT with IN / BETWEEN / LIKE
--------------------------------------------------

-- Students NOT from Delhi or Mumbai
SELECT *
FROM students
WHERE city NOT IN ('Delhi', 'Mumbai');

-- Students with marks NOT between 60 and 80
SELECT *
FROM students
WHERE marks NOT BETWEEN 60 AND 80;

-- Names NOT starting with 'A'
SELECT *
FROM students
WHERE name NOT LIKE 'A%';

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------
-- LIKE → pattern matching
-- IN → multiple values shortcut
-- BETWEEN → range selection
-- NOT → reverse condition

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Names starting with 'R'
-- 2. Names ending with 'a'
-- 3. Students from 'Pune', 'Delhi'
-- 4. Marks between 50 and 75
-- 5. Names containing 'sh'

--------------------------------------------------
-- 🔜 Next: ORDER BY + LIMIT (Day 5)
--------------------------------------------------
