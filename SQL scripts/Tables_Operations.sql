-- USE db_tutorial;

CREATE TABLE student(
	student_id INT auto_increment,
    name VARCHAR(10) NOT NULL,
    major VARCHAR(30) DEFAULT 'Undecided',
    PRIMARY KEY (student_id)
);

ALTER TABLE student ADD gpa DECIMAL(3,2), ADD roll int;
ALTER TABLE student DROP COLUMN gpa, DROP COLUMN roll;


INSERT INTO student(name, major) VALUES("Joy", "CSE");
INSERT INTO student(name, major) VALUES("Jhony", "CSE");
INSERT INTO student(name, major) VALUES("Mokles", "CSE");
INSERT INTO student(major,name) VALUES("R&AC", "Mr JS");
INSERT INTO student(name) VALUES("Mokles");
INSERT INTO student(name) VALUES("Modon");
INSERT INTO student VALUES(6, "Md Mohan", "EEE");

SELECT * FROM student;
DESCRIBE student;
DROP TABLE student;


-- Create table Teacher_Info (
-- 	First_Name varchar(15),
--     Last_Name varchar(15),
--     address varchar(100),
--     city text,
--     age int
-- );
-- desc Teacher_Info;
-- alter table Teacher_Info add Phone_no int, add Maritial_Status varchar(3);
-- show tables;
-- drop table teacher_info;


