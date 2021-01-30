SELECT 
		e.FirstName, 
		e.LastName, 
		e.HireDate, 
		d.[Name] AS DeptName
	FROM Employees e
	LEFT JOIN Departments d ON d.DepartmentID = e.DepartmentID
	WHERE E.HireDate > '1999-01-01' AND
		d.[Name] IN ('Sales', 'Finance')
	ORDER BY e.HireDate