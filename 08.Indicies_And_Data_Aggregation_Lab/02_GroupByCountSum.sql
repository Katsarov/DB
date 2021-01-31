SELECT DepartmentID, COUNT(*), SUM(Salary)
	FROM Employees
GROUP BY DepartmentID