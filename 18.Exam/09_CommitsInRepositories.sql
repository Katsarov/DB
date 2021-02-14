SELECT TOP(5) r.Id, r.Name, 
		COUNT(c.Id) AS [Count]
	FROM Repositories AS r
	JOIN Commits c ON r.Id = c.RepositoryId
	JOIN RepositoriesContributors rc ON r.Id = rc.RepositoryId
  GROUP BY r.Id, r.Name
  ORDER BY [Count] DESC, r.Id, r.Name