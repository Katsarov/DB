SELECT c.FirstName + ' ' + c.LastName AS Client,
	DATEDIFF(DAY, IssueDate, '04-24-2017') AS [Days going],
	j.Status

SELECT m.FirstName + ' ' + m.LastName AS Mechanic,
	AVG(DATEDIFF(DAY, IssueDate, FinishDate)) AS [Average Days]
	FROM Mechanics m
		JOIN Jobs j ON j.MechanicId = m.MechanicId
	GROUP BY j.MechanicId, (m.FirstName + ' ' + m.LastName)
	ORDER BY j.MechanicId
