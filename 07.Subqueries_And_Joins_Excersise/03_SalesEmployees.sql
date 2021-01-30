SELECT 
		e.EmployeeID, 
		e.FirstName, 
		e.LastName, 
		d.[Name] AS DepartmentName
	FROM Employees e
	JOIN Departments d ON d.DepartmentID = e.DepartmentID
	WHERE d.[Name] LIKE 'Sales'
	ORDER BY e.EmployeeID ASC