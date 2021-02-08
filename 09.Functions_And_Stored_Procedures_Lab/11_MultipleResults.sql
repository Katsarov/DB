CREATE OR ALTER PROC sp_MultipleResults
AS
	SELECT FirstName, LastName FROM Employees 
	SELECT FirstName, LastName, d.[Name] AS Department
		FROM Employees e
		JOIN Departments d ON d.DepartmentID = e.DepartmentID
GO

EXEC sp_MultipleResults