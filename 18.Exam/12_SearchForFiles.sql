CREATE PROCEDURE usp_SearchForFiles(@fileExtension VARCHAR(12))
AS

BEGIN
	SELECT f.Id, f.Name,
		CAST(f.Size AS VARCHAR) + 'KB'
		FROM Files f
		WHERE f.Name LIKE ('%' + @fileExtension)
	ORDER BY f.Id, f.Name, f.Size
END