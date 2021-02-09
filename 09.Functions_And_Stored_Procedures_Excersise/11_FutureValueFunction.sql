CREATE FUNCTION ufn_CalculateFutureValue (@sum DECIMAL(17,4), @yearlyInterestRate FLOAT, @years INT)
RETURNS DECIMAL(17,4)
AS
BEGIN
	DECLARE @result DECIMAL(17,4)
	SET @result = @sum * (POWER((1 + @yearlyInterestRate), @years))
	RETURN @result;
END
GO

SELECT dbo.ufn_CalculateFutureValue(1000, 0.1, 5)