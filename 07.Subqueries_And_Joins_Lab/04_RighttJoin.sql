SELECT *
	FROM Employees e
	RIGHT JOIN Addresses a ON a.AddressID = e.AddressID
	--JOIN Towns t ON t.TownID = a.TownID
	ORDER BY FirstName


	--WHERE t.[Name] = 'Sofia' 
		--AND a.AddressText LIKE '%Nishava%'
	--ORDER BY Salary DESC