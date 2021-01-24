
  SELECT 
	[Id],
    [ProductName],
    [OrderDate],
	DATEPART(QUARTER, OrderDate) AS [Quarter],
	DATEPART(MONTH, OrderDate) AS [Month],
	DATEPART(YEAR, OrderDate) AS [Year],
	DATEPART(DAY, OrderDate) AS Day
	FROM Orders