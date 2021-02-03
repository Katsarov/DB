SELECT *
	INTO EmployeeAverageSalaries
	FROM Employees
	WHERE Salary > 30000

DELETE FROM EmployeeAverageSalaries
	WHERE ManagerID = 42

UPDATE EmployeeAverageSalaries
	SET Salary += 5000
	WHERE DepartmentID = 1

SELECT DepartmentID,
		AVG(Salary) AS AverageSalary
		FROM EmployeeAverageSalaries
		GROUP BY DepartmentID