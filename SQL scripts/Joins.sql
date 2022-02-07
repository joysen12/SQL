SELECT * FROM Branch;
INSERT INTO Branch VALUES(4, "Buffalo", NULL, NULL);

-- Finding all branches and there manager Name
-- Without the null values
SELECT Employee.First_Name AS Branch_Manager, Branch.Branch_name
FROM Employee, Branch
WHERE Employee.Emp_id = Branch.Mgr_id;

-- Finding all branches and there manager Name
-- With JOIN cluase

SELECT Employee.Emp_id, Employee.First_Name, Branch.Branch_Name
From Branch
JOIN Employee
ON Employee.Emp_id = Branch.Mgr_id;

-- Find all the employers Name and branch Name
SELECT Employee.First_Name, Branch.Branch_Name
FROM Employee
JOIN Branch
ON Branch.Branch_id = Employee.Branch_id;

-- Find the client Name, Branch Name, Branch Manager Name
SELECT client_name, Branch.Branch_Name, Employee.First_Name AS Manager
FROM Client
JOIN Branch
ON Client.Branch_id = Branch.Branch_id
JOIN Employee
ON Branch.Mgr_id = Employee.Emp_id;









