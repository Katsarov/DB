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

USE Minions
CREATE TABLE Users
(
	Id BIGINT PRIMARY KEY IDENTITY NOT NULL,
	Username VARCHAR(30) UNIQUE NOT NULL,
	[Password] VARCHAR(26) NOT NULL,
	ProfilePicture VARBINARY(MAX)
		CHECK(DATALENGTH(ProfilePicture) <= 900 * 1024),
	LastLoginTime DATETIME2 NOT NULL,
	IsDeleted BIT NOT NULL
)

INSERT INTO Users(Username, [Password], ProfilePicture, LastLoginTime, IsDeleted)
	VALUES
		('Pesho', 'Aa357B', 759, '01.08.2021', 0),
		('Misho', 'MM357654BB', 254, '01.09.2021', 1),
		('Nina', 'Top40CasE', 899, '01.10.2021', 0),
		('Vanda', 'Coli45VV342!', 501, '01.03.2021', 1),
		('Robert', 'Gizmo22', 400, '01.01.2021', 0)

ALTER TABLE Users
DROP CONSTRAINT [PK__Users__3214EC070D4D234E]

ALTER TABLE Users
ADD CONSTRAINT PK_Users_CompositeIdUsername
PRIMARY KEY(Id, Username)

ALTER TABLE Users
ADD CONSTRAINT CK_Users_PasswordLength
	CHECK(LEN([Password]) >= 5)

ALTER TABLE Users
ADD CONSTRAINT DF_Users_LastLoginTime
	DEFAULT GETDATE() FOR LastLoginTime

ALTER TABLE Users
DROP CONSTRAINT [PK_Users_CompositeIdUsername]

ALTER TABLE Users
ADD CONSTRAINT PK_Users_OnlyId
	PRIMARY KEY(Id)

ALTER TABLE Users
ADD CONSTRAINT CK_Users_UsernameLength
	CHECK(LEN(Username) > 3) 
