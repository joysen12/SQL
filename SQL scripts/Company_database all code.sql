CREATE DATABASE Company;
USE Company;
-- Creating Employee Table
CREATE TABLE Employee(
	Emp_id INT,
    First_Name VARCHAR(30),
    Last_Name VARCHAR(30),
    Birth_Date DATE,
    Sex VARCHAR(1),
    Salary INT,
    Super_id INT,
    Branch_id INT,
    PRIMARY KEY(Emp_id)
);

-- Crating Branch Table
CREATE TABLE Branch(
	Branch_id INT PRIMARY KEY,
    Branch_Name VARCHAR(40),
    Mgr_id INT,
    Mgr_start_date DATE,
    FOREIGN KEY (Mgr_id) REFERENCES Employee(Emp_id) ON DELETE SET NULL
);

-- Setting Super_id and Branch_id Foreign keys
ALTER TABLE Employee ADD FOREIGN KEY(Super_id) REFERENCES Employee(Emp_id),
 ADD FOREIGN KEY(Branch_id) REFERENCES Branch(Branch_id) ON DELETE SET NULL;

-- Creating Client Table
CREATE TABLE Client(
	Client_id INT PRIMARY KEY,
    Client_name VARCHAR(50),
    Branch_id INT,
    FOREIGN KEY(BRANCH_id) REFERENCES Branch(Branch_ID) ON DELETE SET NULL
);

-- Creating Works_With Table
CREATE TABLE Works_With(
	Emp_id INT,
    Client_id INT,
    Total_sales INT,
    PRIMARY KEY(Emp_id, Client_id),
    FOREIGN KEY(Emp_id) REFERENCES Employee(Emp_id) ON DELETE CASCADE,
    FOREIGN KEY(Client_id) REFERENCES Client(Client_id) ON DELETE CASCADE
);

-- Creating Branch_Supplier Table
CREATE TABLE Branch_Supplier(
	Branch_id INT,
    Supplier_Name VARCHAR(40),
    Supply_Type VARCHAR(30),
    PRIMARY KEY (Branch_id, Supplier_Name),
    FOREIGN KEY(Branch_id) REFERENCES Branch(Branch_id) ON DELETE CASCADE
);


									-- **Inserting Data** --
-- Inserting to Corporate Branch
INSERT INTO Employee VALUES (100, "David", "Wallace", "1967-11-17", "M",250000, NULL, NULL);
INSERT INTO Branch VALUES(1, "Corporate", 100, "2006-02-09");

UPDATE  Employee
SET Branch_id = 1
WHERE Emp_id = 100;

INSERT INTO Employee VALUES(101, "Jan", "Levinson", "1961-05-11", "F", 110000, 100, 1);

-- Inserting to Scranton Branch
INSERT INTO employee VALUES	(102, "Michael", "Scott", "1964-03-15", "M", 75000, 100, NULL);
INSERT INTO branch VALUES (2, "Scranton", 102, "1992-04-06");

UPDATE  Employee
SET Branch_id = 2
WHERE Emp_id = 102;

INSERT INTO employee VALUES(103, 'Angela', 'Martin', '1971-06-25', 'F', 63000, 102, 2);
INSERT INTO employee VALUES(104, 'Kelly', 'Kapoor', '1980-02-05', 'F', 55000, 102, 2);
INSERT INTO employee VALUES(105, 'Stanley', 'Hudson', '1958-02-19', 'M', 69000, 102, 2);


-- Stamford
INSERT INTO employee VALUES(106, 'Josh', 'Porter', '1969-09-05', 'M', 78000, 100, NULL);
INSERT INTO branch VALUES(3, 'Stamford', 106, '1998-02-13');

UPDATE employee
SET branch_id = 3
WHERE emp_id = 106;

INSERT INTO employee VALUES(107, 'Andy', 'Bernard', '1973-07-22', 'M', 65000, 106, 3);
INSERT INTO employee VALUES(108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000, 106, 3);

-- BRANCH SUPPLIER
INSERT INTO branch_supplier VALUES(2, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3, 'Patriot Paper', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'J.T. Forms & Labels', 'Custom Forms');
INSERT INTO branch_supplier VALUES(3, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(3, 'Stamford Lables', 'Custom Forms');

-- CLIENT
INSERT INTO client VALUES(400, 'Dunmore Highschool', 2);
INSERT INTO client VALUES(401, 'Lackawana Country', 2);
INSERT INTO client VALUES(402, 'FedEx', 3);
INSERT INTO client VALUES(403, 'John Daly Law, LLC', 3);
INSERT INTO client VALUES(404, 'Scranton Whitepages', 2);
INSERT INTO client VALUES(405, 'Times Newspaper', 3);
INSERT INTO client VALUES(406, 'FedEx', 2);

-- WORKS_WITH
INSERT INTO works_with VALUES(105, 400, 55000);
INSERT INTO works_with VALUES(102, 401, 267000);
INSERT INTO works_with VALUES(108, 402, 22500);
INSERT INTO works_with VALUES(107, 403, 5000);
INSERT INTO works_with VALUES(108, 403, 12000);
INSERT INTO works_with VALUES(105, 404, 33000);
INSERT INTO works_with VALUES(107, 405, 26000);
INSERT INTO works_with VALUES(102, 406, 15000);
INSERT INTO works_with VALUES(105, 406, 130000);


show tables;
desc employee;
Select * from branch_supplier;
Select * from works_with;
Select * from client;
Select * from Branch;
Select * from employee;

Delete from Branch;


