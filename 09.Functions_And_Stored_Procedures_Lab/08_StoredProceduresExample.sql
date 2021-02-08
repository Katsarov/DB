CREATE OR ALTER PROC sp_CreateNamesWithSalaries(@Count INT)
AS
	INSERT INTO NamesWithSalaries([Full Name], Salary)
		SELECT TOP(@Count) '[new]' + [Full Name], Salary
			FROM NamesWithSalaries
		ORDER BY Salary DESC
GO

EXEC sp_CreateNamesWithSalaries 3

SELECT * FROM NamesWithSalaries