

SELECT 
		e.FirstName, 
		e.LastName, 
		e.HireDate, 
		d.[Name] AS DeptName
	FROM Employees e
	JOIN Departments d ON d.DepartmentID = e.DepartmentID
	WHERE e.HireDate > '1999-01-01' AND
		d.[Name] IN (SELECT [Name] FROM Departments WHERE [Name] LIKE 'P%')
		--d.Name LIKE 'P%'
	ORDER BY e.HireDate