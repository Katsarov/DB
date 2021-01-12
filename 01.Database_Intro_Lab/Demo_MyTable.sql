/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[FirstName]
      ,[LastName]
      ,[DateOfBirth]
      ,[ScorePoints]
      ,[TeamName]
  FROM [Money].[dbo].[BasketballTeam]

  SELECT * FROM [BasketballTeam]
	ORDER BY ScorePoints DESC;

	DELETE FROM BasketballTeam
	WHERE FirstName = 'Jenifer';

	DELETE FROM BasketballTeam
	WHERE FirstName = 'Niko';

