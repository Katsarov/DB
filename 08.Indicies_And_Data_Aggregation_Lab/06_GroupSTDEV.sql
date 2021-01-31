SELECT DepartmentID, 
	COUNT(*), 
	STDEV(Salary) AS Deviation,
	COUNT(Salary), 
	COUNT(DISTINCT Salary),
	STRING_AGG(Salary, '--')
	FROM Employees
GROUP BY DepartmentID
ORDER BY Deviation