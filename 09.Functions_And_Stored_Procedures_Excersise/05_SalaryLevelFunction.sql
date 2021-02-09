CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4)) 
RETURNS VARCHAR(15)
AS
BEGIN
	IF(@salary < 30000)
		RETURN 'Low'
	IF(@salary BETWEEN 30000 AND 50000)
		RETURN 'Average'
	ELSE
		RETURN 'High'
	RETURN NULL
END	

SELECT Salary,
	dbo.ufn_GetSalaryLevel(Salary)
	FROM Employees

--2nd Solution

CREATE FUNCTION ufn_GetSalaryLevel1(@salary DECIMAL(18,4)) 
RETURNS VARCHAR(15)
AS
BEGIN
DECLARE @result VARCHAR(50)
	IF(@salary < 30000)
		SET @result = 'Low'
	IF(@salary BETWEEN 30000 AND 50000)
		SET @result = 'Average'
	ELSE
		SET @result = 'High'
	RETURN @result
END	

SELECT Salary,
	dbo.ufn_GetSalaryLevel1(Salary)
	FROM Employees
