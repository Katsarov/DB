CREATE DATABASE Minions_222

CREATE TABLE Towns
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] VARCHAR(30) NOT NULL
)

INSERT INTO Towns([Name])
	VALUES
		('Sofia'),
		('Plovdiv'),
		('Varna')

CREATE TABLE Addresses
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(100) NOT NULL,
	TownId INT FOREIGN KEY REFERENCES Towns(Id) NOT NULL
)

INSERT INTO Addresses([Name], TownId)
	VALUES
		('P.Slaveykov str.7, app.3', 2),
		('Dondukov str.1, President hall', 1),
		('Slivnitsa str.255, fl.7, app.7', 3)

CREATE TABLE Departments
(
	Id INT PRIMARY KEY IDENTITY,
	[Name] VARCHAR(30) NOT NULL
)

INSERT INTO Departments([Name])
	VALUES
		('IT'),
		('Marketing'),
		('Accounting'),
		('Purchasing'),
		('Sales')

CREATE TABLE Employees 
(
	Id INT PRIMARY KEY IDENTITY,
	FirstName VARCHAR(20) NOT NULL,
	MiddleName VARCHAR(20),
	LastName VARCHAR(20) NOT NULL,
	JobTitle VARCHAR(30) NOT NULL,
	DepartmentId INT FOREIGN KEY REFERENCES Departments(Id) NOT NULL,
	HireDate DATE NOT NULL,
	Salary DECIMAL(8,2) NOT NULL,
	AddressId INT FOREIGN KEY REFERENCES Addresses(Id) NOT NULL
)

INSERT INTO Employees(FirstName, MiddleName, LastName, JobTitle, DepartmentId, HireDate, Salary, AddressId)
	VALUES
		('Teodora', NULL, 'Moneva', 'IT security expert', 1, '2010-01-23', 22500.50, 1),
		('Ivan', 'Dimitrov', 'Zhelev', 'Head of sales', 5, '2013-12-03', 43550.00, 3),
		('Jhon', 'B.', 'Doe', 'Accountant', 3, '2007-08-04', 32100.88, 2)

