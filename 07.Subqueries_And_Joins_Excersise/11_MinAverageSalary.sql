SELECT TOP(1)

	(SELECT AVG(Salary) 
		FROM Employees e 
			WHERE e.DepartmentID = d.DepartmentID) AS MinAverageSalary
	
FROM Departments d
	ORDER BY MinAverageSalary 

-- 2nd Solution (using GROUP BY)

SELECT TOP(1) AVG(Salary) AS MinAverageSalary
	FROM Employees e
	JOIN Departments d ON d.DepartmentID = e.DepartmentID
GROUP BY e.DepartmentID
ORDER BY MinAverageSalary