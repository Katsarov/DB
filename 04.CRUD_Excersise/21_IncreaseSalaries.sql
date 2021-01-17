UPDATE Employees	
	SET Salary = Salary * 1.12
	WHERE DepartmentID in(1,2,4,11)

SELECT Salary
	FROM Employees

