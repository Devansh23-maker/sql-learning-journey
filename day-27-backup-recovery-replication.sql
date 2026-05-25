-- 🚀 SQL Learning Journey — Day 27
-- Topic: Backup, Recovery & Replication

-- 🎯 Goal:
-- Learn how databases protect and recover data

--------------------------------------------------
-- 🔹 Why Backup is Important?
--------------------------------------------------

-- Backup protects against:
-- ❌ System failure
-- ❌ Data corruption
-- ❌ Human mistakes
-- ❌ Cyber attacks

--------------------------------------------------
-- 🔹 1. Database Backup
--------------------------------------------------

-- MySQL Backup Command

-- mysqldump -u root -p company_db > backup.sql

-- 👉 Creates SQL backup file

--------------------------------------------------
-- 🔹 2. Restore Database
--------------------------------------------------

-- mysql -u root -p company_db < backup.sql

-- 👉 Restores database from backup

--------------------------------------------------
-- 🔹 3. Backup Specific Table
--------------------------------------------------

-- mysqldump -u root -p company_db employees > employees_backup.sql

--------------------------------------------------
-- 🔹 4. Full Backup
--------------------------------------------------

-- Copies entire database

--------------------------------------------------
-- 🔹 5. Incremental Backup
--------------------------------------------------

-- Backup only changed data
-- after last backup

--------------------------------------------------
-- 🔹 6. Differential Backup
--------------------------------------------------

-- Backup all changes
-- since last full backup

--------------------------------------------------
-- 🔹 7. Point-in-Time Recovery
--------------------------------------------------

-- Restore database
-- to exact time before failure

--------------------------------------------------
-- 🔹 8. Replication
--------------------------------------------------

-- Replication copies data
-- from one database server to another

--------------------------------------------------
-- 🔹 Types of Replication
--------------------------------------------------

-- ✅ Master-Slave
-- ✅ Master-Master

--------------------------------------------------
-- 🔹 Master-Slave Replication
--------------------------------------------------

-- Master:
-- Handles writes

-- Slave:
-- Copies data from master

--------------------------------------------------
-- 🔹 Advantages of Replication
--------------------------------------------------

-- ✅ High availability
-- ✅ Load balancing
-- ✅ Disaster recovery
-- ✅ Better performance

--------------------------------------------------
-- 🔹 9. Database Recovery
--------------------------------------------------

-- Recovery restores database
-- after crash or corruption

--------------------------------------------------
-- 🔹 Recovery Techniques
--------------------------------------------------

-- ✅ Backup restoration
-- ✅ Transaction logs
-- ✅ Checkpoints

--------------------------------------------------
-- 🔹 10. Transaction Logs
--------------------------------------------------

-- Logs store database changes

-- Used for:
-- ✅ Recovery
-- ✅ Auditing
-- ✅ Replication

--------------------------------------------------
-- 🧠 Key Concepts:
--------------------------------------------------

-- Backup
-- Restore
-- Replication
-- Recovery
-- Transaction Logs

--------------------------------------------------
-- 🔥 Real-World Uses:
--------------------------------------------------

-- ✅ Banking systems
-- ✅ Cloud databases
-- ✅ Enterprise applications
-- ✅ Disaster recovery systems

--------------------------------------------------
-- 📝 Practice Questions:
--------------------------------------------------

-- 1. Difference between full & incremental backup
-- 2. Explain replication
-- 3. What is point-in-time recovery?
-- 4. Advantages of transaction logs

--------------------------------------------------
-- 🔜 Next: Database Security & User Management (Day 28)
--------------------------------------------------
