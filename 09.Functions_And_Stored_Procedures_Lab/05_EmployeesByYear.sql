
--EmployeeHireDate as VIEW

--CREATE OR ALTER VIEW v_EmployeesByYear AS
--SELECT *
--	FROM Employees
--	WHERE YEAR(HireDate) = 2000

--SELECT * FROM v_EmployeesByYear

--EmployeeHireDate as FUNCTION

CREATE OR ALTER FUNCTION udf_EmployeesByYear(@Year INT)
RETURNS TABLE AS
RETURN
	(
	SELECT * FROM Employees
	WHERE YEAR(HireDate) = @Year
	)

	SELECT * FROM dbo.udf_EmployeesByYear(2002)
