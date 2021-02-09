CREATE PROC usp_EmployeesBySalaryLevel(@levelOfSalary VARCHAR(15))
AS
	SELECT FirstName, LastName
		FROM Employees
		WHERE dbo.ufn_GetSalaryLevel(Salary) = @levelOfSalary
GO

EXEC usp_EmployeesBySalaryLevel 'High'