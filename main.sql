-- Step 1: Create a sample table for the activity
CREATE TABLE students_projects (
    project_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department VARCHAR(50),
    project_topic VARCHAR(100),
    score INT
);

-- Step 2: Insert sample data into the table
INSERT INTO students_projects (project_id, student_name, department, project_topic, score) VALUES
(1, 'John Doe', 'Computer Science', 'Data Analytics using SQL', 85),
(2, 'Jane Smith', 'Information Technology', 'Web Development with React', 92),
(3, 'James Johnson', 'Computer Science', 'Database Optimization', 78),
(4, 'Alice Brown', 'Data Science', 'Machine Learning Basics', 95),
(5, 'Jonathan Davis', 'Computer Science', 'SQL Query Tuning', 88),
(6, 'Jessica Taylor', 'Information Technology', 'Network Security', 90),
(7, 'Robert Jones', 'Data Science', 'Python Data Pipelines', 82),
(8, 'Julia Roberts', 'Computer Science', 'Advanced SQL Joins', 91);

-- ==========================================
-- Step 3: Run queries demonstrating the concepts
-- ==========================================

-- Query 1: Using DISTINCT to find unique departments
SELECT DISTINCT department 
FROM students_projects;

-- Query 2: Using filtering (WHERE) and sorting (ORDER BY)
SELECT student_name, project_topic, score 
FROM students_projects 
WHERE score > 80 
ORDER BY score DESC;

-- Query 3: Using the LIKE operator to search for specific student name patterns (e.g., names starting with 'J')
SELECT student_name, department, project_topic 
FROM students_projects 
WHERE student_name LIKE 'J%';

-- Query 4: Combining DISTINCT, WHERE, LIKE, and ORDER BY
-- This query retrieves unique departments where students scored 85 or higher 
-- and their names start with 'J', sorted alphabetically by department name.
SELECT DISTINCT department 
FROM students_projects 
WHERE score >= 85 
  AND student_name LIKE 'J%' 
ORDER BY department ASC;