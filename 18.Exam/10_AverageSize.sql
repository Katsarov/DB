SELECT u.Username,
	AVG(f.Size) AS Average
	FROM Users u
	JOIN Commits c ON u.Id = c.ContributorId
	JOIN Files f ON c.Id = f.CommitId

	WHERE c.ContributorId IS NOT NULL
		GROUP BY u.Username
		ORDER BY Average DESC, u.Username ASC