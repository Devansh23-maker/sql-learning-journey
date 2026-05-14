-- 🚀 SQL Learning Journey — Day 19
-- Topic: EXISTS, ANY, ALL

-- 🎯 Goal:
-- Learn advanced filtering with subqueries

-- 📊 Sample Tables
--------------------------------------------------

-- students
-- id, name, marks, city_id

-- cities
-- city_id, city_name

--------------------------------------------------
-- 🔹 1. EXISTS
--------------------------------------------------

-- EXISTS checks whether subquery returns rows

SELECT city_name
FROM cities c

WHERE EXISTS (
    SELECT *
    FROM students s
    WHERE s.city_id = c.city_id
);

-- 👉 Returns cities having students

--------------------------------------------------
-- 🔹 2. NOT EXISTS
--------------------------------------------------

SELECT city_name
FROM cities c

WHERE NOT EXISTS (
    SELECT *
    FROM students s
    WHERE s.city_id = c.city_id
);

-- 👉 Cities with NO students

--------------------------------------------------
-- 🔹 3. ANY
--------------------------------------------------

-- Students with marks greater than ANY Delhi student

SELECT name, marks
FROM students

WHERE marks > ANY (
    SELECT marks
    FROM students
    WHERE city = 'Delhi'
);

-- 👉 Greater than at least one value

--------------------------------------------------
-- 🔹 4. ALL
--------------------------------------------------

-- Students with marks greater than ALL Delhi students

SELECT name, marks
FROM students

WHERE marks > ALL (
    SELECT marks
    FROM students
    WHERE city = 'Delhi'
);

-- 👉 Greater than every value

--------------------------------------------------
-- 🔥 Difference:
--------------------------------------------------

-- ANY:
-- Condition true for at least one value

-- ALL:
-- Condition true for every value

--------------------------------------------------
-- 🔹 5. EXISTS vs IN
--------------------------------------------------

-- EXISTS:
-- Better for large datasets

-- IN:
-- Simpler for small datasets

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------

-- EXISTS
-- NOT EXISTS
-- ANY
-- ALL
-- Subquery filtering

--------------------------------------------------
-- 🔥 Real-World Uses:
--------------------------------------------------

-- ✅ Customer activity checks
-- ✅ Advanced filtering
-- ✅ Business conditions
-- ✅ Analytics pipelines

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Find cities with students using EXISTS
-- 2. Find cities without students
-- 3. Use ANY with marks
-- 4. Use ALL with salary comparison

--------------------------------------------------
-- 🔜 Next: SQL String Functions (Day 20)
--------------------------------------------------
