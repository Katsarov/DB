CREATE VIEW v_CustomersObfuscatedCCNumbers AS
SELECT TOP (1000) [CustomerID]
      ,[FirstName]
      ,[LastName]
	  , CONCAT(LEFT(PaymentNumber, 6), REPLICATE('*', LEN(PaymentNumber) - 6)) AS [PaymentNumber]
  FROM [Demo].[dbo].[Customers]