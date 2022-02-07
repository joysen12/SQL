-- Unions
SELECT First_Name AS "Fore Name"
FROM Employee
UNION
SELECT Branch_Name
FROM Branch
UNION
SELECT Client_Name
FROM Client;

SELECT Client.Client_Name
FROM Client
UNION
SELECT branch_supplier.Supplier_Name
FROM branch_supplier;






