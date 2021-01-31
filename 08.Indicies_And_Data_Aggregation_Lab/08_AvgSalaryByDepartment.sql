SELECT d.Name, 
		e.Salary,
		COUNT(*) AS Count
	FROM Employees e
	JOIN Departments d ON d.DepartmentID = e.DepartmentID
GROUP BY d.Name, e.Salary
ORDER BY Count DESC
