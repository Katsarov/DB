SELECT c.[Name],
	COUNT(*) AS Hotels
	FROM Cities c
	JOIN Hotels h ON h.CityId = c.Id
	GROUP BY c.[Name]
	ORDER BY Hotels DESC, c.[Name]