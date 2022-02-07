SELECT 	Employee.First_Name, Employee.Last_name
FROM Employee
WHERE Employee.Emp_id IN (
	SELECT Emp_id
	FROM works_with
	WHERE Total_sales > 30000
);

SELECT Client.Client_Name
FROM client
WHERE Branch_id = (
	SELECT Branch.Branch_id
	FROM Branch
	WHERE Branch.Mgr_id = 102
);

