SELECT SUM(Difference) AS SumDifference
    FROM (SELECT wd.DepositAmount - LEAD(wd.DepositAmount) OVER (ORDER BY Id) AS Difference
              FROM WizzardDeposits AS wd) AS DifferenceQuery

-- 2nd Solution
SELECT --Guest.Id, Guest.FirstName, Guest.DepositAmount,
		--Host.Id, Host.FirstName, Host.DepositAmount,
		SUM(Guest.DepositAmount - Host.DepositAmount) AS [Difference]
	FROM WizzardDeposits AS Host
	JOIN WizzardDeposits AS Guest ON Guest.Id + 1 = Host.Id
