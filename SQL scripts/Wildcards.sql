SELECT *
FROM employee;

SELECT count(First_Name), First_Name
FROM EMPLOYEE
WHERE First_name LIKE 'J%'
GROUP BY First_Name;

SELECT *
FROM Client
WHERE Client_Name LIKE '%Ex';

SELECT *
FROM Employee
WHERE Birth_date LIKE '____-02%';