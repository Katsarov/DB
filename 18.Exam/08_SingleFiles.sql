SELECT fo.Id, fo.Name,
		CAST(fo.Size AS VARCHAR(100)) + 'KB'
		FROM Files f
	RIGHT JOIN Files fo ON f.ParentId = fo.Id
	WHERE f.ParentId IS NULL
	ORDER BY f.Id, f.Name, f.Size DESC