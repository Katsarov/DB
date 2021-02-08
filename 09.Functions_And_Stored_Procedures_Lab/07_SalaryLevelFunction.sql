CREATE FUNCTION ufn_GetSalaryLevel(@Salary MONEY)
RETURNS VARCHAR(10)
AS
BEGIN
	IF @Salary < 30000
		RETURN 'Low'
	ELSE IF @Salary >= 30000 AND @Salary <= 50000
		RETURN 'Average'
	ELSE
		RETURN 'High'
	RETURN NULL
END

SELECT FirstName, LastName, Salary,
dbo.ufn_GetSalaryLevel(Salary)
	FROM Employees