
--DECLARE @Base INT = 2;
--DECLARE @Exp INT = 30;
--DECLARE @Result INT = POWER(@Base, @Exp)
--SELECT @Result



--CREATE FUNCTION udf_BigPower(@Base INT, @Exp INT)
--RETURNS DECIMAL(38)
--AS
--BEGIN
--	DECLARE @Result DECIMAL(38) = 1;
	
--	WHILE (@Exp > 0)
--	BEGIN
--		SET @Result = @Result * @Base;
--		SET @Exp = @Exp - 1;
--	END
--	RETURN @Result
--END

--SELECT dbo.udf_BigPower(2, 100)

SELECT FirstName,
		LastName,
		Salary,
		dbo.udf_BigPower(Salary, 2)
	FROM Employees
