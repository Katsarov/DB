SELECT DepartmentID, ThirdHighestSalary
	FROM
		(SELECT e.DepartmentID, 
			MAX(e.Salary) AS ThirdHighestSalary,
			DENSE_RANK() OVER(PARTITION BY e.DepartmentID ORDER BY e.Salary DESC) AS [Rank]
		FROM Employees e
		GROUP BY DepartmentID, Salary) AS HigehstSalaryQuery
	WHERE HigehstSalaryQuery.Rank = 3



	