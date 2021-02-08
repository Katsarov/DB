DECLARE @Year SMALLINT = 2021;
SELECT @Year

SET @Year = @Year + 1;
SELECT @Year

GO

DECLARE @MyTempTable 
	TABLE(Id INT PRIMARY KEY IDENTITY, [Name] NVARCHAR(MAX))
INSERT INTO @MyTempTable ([Name])
	VALUES ('Niki')
SELECT *
	FROM @MyTempTable
