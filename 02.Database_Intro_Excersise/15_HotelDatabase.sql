CREATE DATABASE Hotel

USE Hotel

CREATE TABLE Employees
(
	Id INT PRIMARY KEY NOT NULL,
	FirstName VARCHAR(90) NOT NULL,
	LastName VARCHAR(90) NOT NULL,
	Title VARCHAR(50) NOT NULL,
	Notes VARCHAR(MAX)
)

INSERT INTO Employees(Id, FirstName, LastName, Title, Notes)
	VALUES
		(1, 'Gogo', 'Petrov', 'CEO', NULL),
		(2, 'Misho', 'Shamarov', 'Engineer', 'Top performer'),
		(3, 'Ana', 'Karenina', 'Writer', 'Play in cinema')

CREATE TABLE Customers
(
	AccountNumber INT PRIMARY KEY NOT NULL,
	FirstName VARCHAR(90) NOT NULL,
	LastName VARCHAR(90) NOT NULL,
	PhoneNumber CHAR(10) NOT NULL,
	EmergencyName VARCHAR(90) NOT NULL,
	EmergencyNumber CHAR(10),
	Notes VARCHAR(MAX)
)

INSERT INTO Customers(AccountNumber, FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber, Notes)
	VALUES
		(120, 'Gregory', 'Tirion', '3334445556', 'Tiger', '1111111111', 'Damage on fire'),
		(740, 'Tom', 'Kruss', '2299774455', 'Mamal', '3333333333', 'Minority report'),
		(999, 'Nikole', 'Kidmann', '9876543210', 'Lady', '9999999999', 'Bad girl')


CREATE TABLE RoomStatus
(
	RoomStatus VARCHAR(20) NOT NULL,
	Notes VARCHAR(MAX)
)

INSERT INTO RoomStatus(RoomStatus, Notes)
	VALUES
		('Cleaning', 'Blue room'),
		('Free', NULL),
		('Occupied', 'President apartment')

CREATE TABLE RoomTypes
(
	RoomType VARCHAR(30) NOT NULL,
	Notes VARCHAR(MAX)
)

INSERT INTO RoomTypes(RoomType, Notes)
	VALUES
		('Room', 'Blue room'),
		('Apartment', NULL),
		('Luxury Apartment', 'President apartment')

CREATE TABLE BedTypes
(
	BedType VARCHAR(20) NOT NULL,
	Notes VARCHAR(MAX)
)

INSERT INTO BedTypes(BedType, Notes)
	VALUES
		('Single bed', NULL),
		('Lardge bed', NULL),
		('Luxury Bed', 'Hohoho')

CREATE TABLE Rooms
(
	RoomNumber INT PRIMARY KEY NOT NULL,
	RoomType VARCHAR(30) NOT NULL,
	BedType VARCHAR(30) NOT NULL,
	Rate INT,
	RoomStatus BIT NOT NULL,
	Notes VARCHAR(MAX)
)

INSERT INTO Rooms(RoomNumber, RoomType, BedType, Rate, RoomStatus, Notes)
	VALUES
		(265, 'Apartment', 'Luxyry Bed', 8, 1, 'Comments: not yet received'),
		(777, 'Luxury Apartment', 'Lardge Bed', 9, 0, NULL),
		(999, 'Room', 'Single bed', 3, 1, 'Comments: horable!!')

CREATE TABLE Payments
(
	Id INT PRIMARY KEY NOT NULL,
	EmployeeId INT NOT NULL,
	PaymentDate DATETIME NOT NULL,
	AccountNumber INT NOT NULL,
	FirstDateOccupied DATETIME NOT NULL,
	LastDateOccupied DATETIME NOT NULL,
	TotalDays TINYINT NOT NULL,
	AmountCharged DECIMAL(8,2),
	TaxRate INT,
	TaxAmount INT,
	PaymentTotal DECIMAL(8,2),
	Notes VARCHAR(MAX)
)

INSERT INTO Payments(Id, EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied, TotalDays, AmountCharged, 
TaxAmount, PaymentTotal, Notes)
	VALUES
		(1, 1, GETDATE(), 120, '05.05.2012', '05.08.2012', 3, 450.88, NULL, 450.88, NULL),
		(2, 1, GETDATE(), 740, '01.05.2012', '01.10.2012', 5, 650.50, NULL, 650.50, NULL),
		(3, 1, GETDATE(), 999, '08.10.2012', '08.17.2012', 7, 990.99, NULL, 990.99, NULL)

CREATE TABLE Occupancies 
(
	Id INT PRIMARY KEY NOT NULL,
	EmployeeId INT NOT NULL,
	DateOccupied DATETIME NOT NULL,
	AccountNumber INT NOT NULL,
	RoomNumber INT NOT NULL,
	RateApplied BIT,
	PhoneCharge DECIMAL(8,2),
	Notes VARCHAR(MAX)
)

INSERT INTO Occupancies(Id, EmployeeId, DateOccupied, AccountNumber, RoomNumber, RateApplied, PhoneCharge, Notes)
	VALUES
		(1, 120, GETDATE(), 120, 222, 0, 0.00, NULL),
		(2, 123, GETDATE(), 123, 333, 0, 0.00, NULL),
		(3, 129, GETDATE(), 129, 444, 0, 0.00, NULL)

