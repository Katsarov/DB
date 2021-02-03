SELECT 
	SUBSTRING(FirstName, 1, 1) AS FirstLetter
	FROM WizzardDeposits
	WHERE DepositGroup = 'Troll Chest'
	GROUP BY SUBSTRING(FirstName, 1, 1)
	ORDER BY SUBSTRING(FirstName, 1, 1)

--2nd Solution

SELECT *
    FROM (SELECT LEFT(FirstName, 1) AS FirstLetter
              FROM WizzardDeposits 
              WHERE DepositGroup = 'Troll Chest') AS FirstLetterQuery
    GROUP BY FirstLetter
    ORDER BY FirstLetter