CREATE PROC usp_GetEmployeesFromTown(@TownName NVARCHAR(50))
AS
	SELECT e.FirstName, e.LastName
		FROM Employees e
		JOIN Addresses a ON a.AddressID = e.AddressID
		JOIN Towns t ON t.TownID = a.TownID
	WHERE t.[Name] = @TownName
GO

EXEC usp_GetEmployeesFromTown 'Seattle'