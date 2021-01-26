
SELECT [Username]
      ,[IpAddress] AS [IP Address]
  FROM Users
  WHERE IpAddress LIKE '___.1%.%.___'
  ORDER BY Username

  --2nd Solution
  SELECT [Username]
      ,[IpAddress] AS [IP Address]
  FROM Users
  WHERE IpAddress LIKE ('[0-9][0-9][0-9].1[0-9]%.[0-9]%.[0-9][0-9][0-9]')  
  ORDER BY Username