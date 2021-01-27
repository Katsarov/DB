SELECT 
	(SELECT AVG(Salary) 
		FROM Employees e 
			WHERE e.DepartmentID = d.DepartmentID) AS MinAverageSalary
	FROM Departments d
	ORDER BY MinAverageSalary 