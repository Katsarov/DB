CREATE PROC sp_AddEmployeeToProject(@EmployeeID INT, @ProjectID INT)
AS
	DECLARE @CountEmployeeproject INT =
		(SELECT COUNT(*) FROM EmployeesProjects
			WHERE EmployeeID = @EmployeeID
				AND ProjectID = @ProjectID);
	IF @CountEmployeeproject > 0
		THROW 50001, 'This employee is already in the project', 1
	INSERT INTO EmployeesProjects(EmployeeID, ProjectID)
		VALUES
			(@EmployeeID, @ProjectID)
GO

EXEC sp_AddEmployeeToProject 1, 104