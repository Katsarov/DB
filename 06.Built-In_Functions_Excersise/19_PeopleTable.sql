CREATE TABLE People
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] VARCHAR(50) NOT NULL,
	Birthday DATETIME2 NOT NULL
)

INSERT INTO People([Name], Birthday)
	VALUES
		('Victor', '2000-12-07'),
		('Steven', '1992-09-10'),
		('Stephen', '1910-09-19'),
		('John', '2010-01-06')

SELECT [Name],
	DATEDIFF(YEAR, Birthday, GETDATE()) AS [Age in Years],
	DATEDIFF(MONTH, Birthday, GETDATE()) AS [Age in Months],
	DATEDIFF(DAY, Birthday, GETDATE()) AS [Age in Days],
	DATEDIFF(MINUTE, Birthday, GETDATE()) AS [Age in Minutes]
	FROM People