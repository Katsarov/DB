CREATE OR ALTER PROC sp_AddAndMultiply(
		@FirstNumber INT, @SecondNumber INT,
		@Sum INT OUTPUT, @Product INT OUTPUT)
AS
	SET @Sum = @FirstNumber + @SecondNumber;
	SET @Product = @FirstNumber * @SecondNumber;
GO

DECLARE @Sum INT;
DECLARE @Product INT;
EXEC sp_AddAndMultiply 2, 5, @Sum OUTPUT, @Product OUTPUT
SELECT @Sum AS SUM, @Product AS PRODUCT