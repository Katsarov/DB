
DECLARE @Year SMALLINT = 2000;

WHILE @Year < 2008
BEGIN
	SELECT @Year AS [Year], COUNT(*) AS NumEmployees
		FROM Employees 
	WHERE YEAR(HireDate) = @Year
	SET @Year = @Year + 1 
END

DECLARE @Num SMALLINT = (SELECT COUNT(*) FROM Employees);
SELECT @Num

DECLARE @Name VARCHAR(MAX) = (SELECT TOP(1) FirstName FROM Employees);
SELECT @Name

DECLARE @Number INT = CONVERT(INT, '2021')
SELECT @Number

DECLARE @Number2 INT = CAST('2021' AS INT)
SELECT @Number2

--All numbers from 1 to 100
DECLARE @NewNum INT = 1;
WHILE (@NewNum < 100)
	BEGIN
		SELECT @NewNum AS ColumnNumber
		SET @NewNum += 1;
	END
SELECT @NewNum

--All numbers from 1 to 100. Break if number > 50
DECLARE @NewNum2 INT = 1;
WHILE (@NewNum2 < 100)
	BEGIN
		SELECT @NewNum2 AS ColumnNumber
		SET @NewNum2 += 1;
		IF(@NewNum2 > 50)
		BREAK
	END
SELECT @NewNum2

