SELECT d.Name, 
		COUNT(*) AS Count, 
		AVG(Salary) AS AvgSalary
	FROM Employees e
	JOIN Departments d ON d.DepartmentID = e.EmployeeID
GROUP BY d.Name
HAVING AVG(Salary) > 30000