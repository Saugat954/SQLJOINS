CREATE DATABASE Joins;
USE Joins;
CREATE TABLE Student(
Student_id INT , Name VARCHAR(50));
INSERT INTO Student(
Student_id, Name)
values(101,"Adam"),
(102,"Bob"),
(103,"CAsey");

CREATE TABLE Course(
Student_id INT , Course VARCHAR(20));

INSERT INTO Course(
Student_id, Course)
VALUES (102,"English"),
(105,"Maths"),
(103,"Science"),
(107,"Computer");

SELECT*FROM Student;

SELECT * FROM Course;
SET SQL_SAFE_UPDATES = 0;

UPDATE Course
SET Course = "Computer Science"
WHERE Course="Computer";

-- ----------------------INNERJOIN-----------------------


SELECT *
FROM Student
INNER JOIN Course
ON Student.Student_id = Course.Student_id;

-- ---------------------LEFTJOIN---------------------------

SELECT * 
FROM Student as S
LEFT JOIN Course as C
on S.Student_id= C.Student_id;

-- --------------------RIGHTJOIN-----------------------------

SELECT * 
FROM Student as S
RIGHT JOIN Course as C
on S.Student_id= C.Student_id;

-- --------------------FULLJOIN------------------------

SELECT * 
FROM Student as S
LEFT JOIN Course as C
on S.Student_id= C.Student_id
UNION
SELECT * 
FROM Student as S
RIGHT JOIN Course as C
on S.Student_id= C.Student_id;


-- ---------------------LEFT EXCLUSIVE JOIN--------------------
SELECT *
FROM STUDENT
LEFT JOIN COURSE
ON Student.Student_id=Course.Student_id
WHERE Course.Student_id IS NULL;

-- ------------------------RIGHT EXCLUSIVE JOIN--------------------
 
SELECT *
FROM STUDENT
RIGHT JOIN COURSE
ON Student.Student_id=Course.Student_id
WHERE Student.Student_id IS NULL;


-- SELF JOIN ---------------

-- TABLE FOR SELF JOIN 

CREATE TABLE Employee(
ID INT , 
Name VARCHAR (20),
Manager_id INT);

INSERT INTO Employee(
ID,Name,Manager_id)
VALUES
(101,"Adam",103),
(102,"Bob",104),
(103,"Casey",NULL),
(104,"Donald",103);

SELECT*
FROM Employee as a
JOIN Employee as b
on a.ID=b.Manager_id;


