CREATE FUNCTION udf_GetCost(@jobsID INT)
RETURNS DECIMAL(8,2)
AS
BEGIN
DECLARE @result DECIMAL(8,2)
SET @result = 
			(SELECT SUM(p.Price * op.Quantity) AS TotalSum
				FROM Jobs j
				JOIN Orders o ON o.JobId = j.JobId
				JOIN OrderParts op ON op.OrderId = o.OrderId
				JOIN Parts p ON p.PartId = op.PartId
			  WHERE j.JobId = @jobsID
			GROUP BY j.JobId)
IF (@result IS NULL)
SET @result = 0;

RETURN @result

END

SELECT dbo.udf_GetCost(1)