SELECT * FROM
	(SELECT TOP(1000)
		[EmployeeID], 
		[FirstName], 
		[LastName], 
		[Salary],
		  ROW_NUMBER() OVER(ORDER BY Salary DESC) AS RowNumber,
		  RANK() OVER(ORDER BY Salary DESC) AS [Rank],
		  DENSE_RANK() OVER(ORDER BY Salary DESC) AS DenseRank,
		  NTILE(5) OVER(ORDER BY Salary DESC) AS GroupNo
	  FROM [SoftUni].[dbo].[Employees]
	  ORDER BY Salary DESC) AS tempResults
WHERE GroupNo = 3
