
SELECT 
	EmployeeID, FirstName, LastName, Salary,
	  ROW_NUMBER() OVER(ORDER BY Salary DESC) AS Position
  FROM Employees
  ORDER BY Position