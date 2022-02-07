SELECT * FROM Student;
desc student;

CREATE TABLE Student (
	Student_id INT AUTO_INCREMENT,
    Name VARCHAR(30) NOT NULL,
    Depertment VARCHAR(10) DEFAULT "Non Tech",
    PRIMARY KEY (Student_id)
);

update student 
set  Result = 4.00
where Student_id = 10;

INSERT INTO student(name, Depertment) VALUES("Joy Sen", "CSE");
INSERT INTO student(name, Depertment) VALUES("Jhone", "CMT");
INSERT INTO student(name, Depertment) VALUES("Kate", "Biology");
INSERT INTO student(name, Depertment) VALUES("Shon", "Chemistry");
INSERT INTO student(name, Depertment) VALUES("Raihan", "CSE");
INSERT INTO student(name, Depertment) VALUES("Modon", "CMT");
INSERT INTO student(name, Depertment) VALUES("Mokles", "Biology");
INSERT INTO student(name) VALUES("Mofiz");

-- Query
SELECT *
FROM student
WHERE Depertment != "CMT" AND Depertment != "CSE"
ORDER BY Result DESC
LIMIT 5;


-- More Queries

SELECT DISTINCT Gender
FROM employee;
SELECT DISTINCT Branch_id
FROM employee;
SELECT First_Name AS ForeName, Last_Name AS SurName
FROM employee;


desc employee;











