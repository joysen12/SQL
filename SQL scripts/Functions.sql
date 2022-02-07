SELECT Distinct Branch_id
FROM Employee;

SELECT COUNT(Emp_id)
FROM Employee;
SELECT COUNT(Emp_id)
FROM Employee
WHERE gender = "M";

SELECT AVG(Salary)
FROM Employee;

SELECT SUM(Salary)
FROM Employee
WHERE gender = "F" AND Birth_date > "1971-01-01";

SELECT COUNT(Gender) AS NumberOfGender, Gender AS GenderName
FROM Employee
GROUP BY Gender;

SELECT SUM(Total_sales) AS Total_Sale, Emp_id
FROM Works_with
GROUP BY Emp_id;

SELECT *
FROM Employee;