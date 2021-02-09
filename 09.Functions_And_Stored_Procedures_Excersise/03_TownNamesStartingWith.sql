CREATE PROC usp_GetTownsStartingWith(@TownStartsWith NVARCHAR(50))
AS
	SELECT [Name] 
		FROM Towns 
	WHERE [Name] LIKE @TownStartsWith + '%'
GO

EXEC usp_GetTownsStartingWith 'b'