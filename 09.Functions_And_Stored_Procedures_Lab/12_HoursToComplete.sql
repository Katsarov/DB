CREATE FUNCTION udf_HoursToComplete(
	@StartDate DATETIME, @EndDate DATETIME)
RETURNS INT
AS
BEGIN
	IF @StartDate IS NULL
		RETURN 0
	IF @EndDate IS NULL
		RETURN 0
	RETURN DATEDIFF(HOUR, @StartDate, @EndDate)
END

SELECT StartDate, EndDate,
	dbo.udf_HoursToComplete(StartDate, EndDate) AS TotalHours
	FROM Projects