/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (5) [Id]
      ,[FirstName]
      ,[LastName]
      ,[DateOfBirth]
      ,[ScorePoints]
  FROM [Money].[dbo].[BasketballTeam]

  SELECT * FROM [BasketballTeam]
	ORDER BY LastName DESC;

SELECT * FROM BasketballTeam
	WHERE ScorePoints >= 200
	ORDER BY LastName DESC;

SELECT FirstName, Lastname 
FROM BasketballTeam

SELECT * FROM BasketballTeam
WHERE FirstName = 'Todor' AND LastName = 'Donev';


