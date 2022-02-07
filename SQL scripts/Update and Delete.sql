SELECT * FROM student;

INSERT INTO student  VALUES (1, "Joy", "CSE");

UPDATE student 
SET name = "Workless", major = "Mechanical"
WHERE student_id = 6;

DELETE FROM student 
WHERE student_id % 2 = 0;

