SELECT DepartmentID, 
	COUNT(*) AS [Num of Employees], 
	MIN(Salary) AS [Min Salary],
	MAX(Salary) AS [Max Salary]
	FROM Employees
GROUP BY DepartmentID