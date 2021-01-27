SELECT 
	DepartmentID,
	[Name],
	(SELECT COUNT(*) 
		FROM Employees e 
			WHERE e.DepartmentID = d.DepartmentID) AS EmployeesNumber,
	(SELECT SUM(Salary) 
		FROM Employees e 
			WHERE e.DepartmentID = d.DepartmentID) AS TotalSalary,
	(SELECT AVG(Salary) 
		FROM Employees e 
			WHERE e.DepartmentID = d.DepartmentID) AS AverageSalary
	FROM Departments d