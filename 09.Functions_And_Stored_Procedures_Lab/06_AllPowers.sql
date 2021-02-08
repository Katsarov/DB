CREATE FUNCTION udf_AllPowers(@MaxPower INT)
RETURNS @Table TABLE(Id INT PRIMARY KEY IDENTITY, Square BIGINT)
AS
BEGIN
	DECLARE @I INT = 1;
	WHILE(@MaxPower >= @I)
	BEGIN
		INSERT INTO @Table (Square)
			VALUES
				(@I * @I)
			SET @I = @I + 1;
	END
	RETURN
END

SELECT * FROM udf_AllPowers(50)
WHERE [SQUARE] % 3 = 0
ORDER BY Square DESC