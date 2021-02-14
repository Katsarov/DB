CREATE FUNCTION	udf_AllUserCommits(@username VARCHAR(50))
RETURNS INT

BEGIN
	RETURN (SELECT COUNT(c.Id) FROM Users u
				LEFT JOIN Commits c ON u.Id = c.ContributorId
			WHERE u.Username = @username)
END

SELECT dbo.udf_AllUserCommits('UnderSinduxrein')