SELECT d.Name, 
	COUNT(*) AS [Count],
	SUM(Salary) AS [TotalSalary]
	FROM Employees e
	JOIN Departments d ON d.DepartmentID = e.DepartmentID
GROUP BY d.Name
ORDER BY TotalSalary DESC