USE Minions

CREATE TABLE People
(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	[Name] NVARCHAR(200) NOT NULL,
	Picture VARBINARY(MAX),
	Height DECIMAL(3,2),
	[Weight] DECIMAL(5,2),
	Gender CHAR(1) CHECK(Gender in ('m', 'f')) NOT NULL,
	Birthdate DATE NOT NULL,
	Biography NVARCHAR(MAX)
)

INSERT INTO People([Name], Picture, Height, [Weight], Gender, Birthdate, Biography)
	VALUES
		('Pesho', 1350, 1.78, 88.50, 'm', '12.05.1990', 'Engineer'),
		('Maria', 950, 1.58, 65.50, 'f', '07.23.1995', 'teacher'),
		('Ani', 1760, 1.65, 60.80, 'f', '01.01.1977', 'Doctor'),
		('Ivan', 1255, 1.80, 81.20, 'm', '06.20.1973', 'Enterpreneur'),
		('Robert', 1950, 1.75, 78.50, 'm', '03.08.1984', 'WEB developer in CAREO')

SELECT * FROM People