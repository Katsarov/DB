SELECT m.FirstName + ' ' + m.LastName
	FROM Mechanics m
	LEFT JOIN Jobs j ON j.MechanicId = m.MechanicId
  WHERE j.JobId IS NULL OR
					(SELECT COUNT(JobId)
						FROM Jobs j
						WHERE Status != 'Finished' AND j.MechanicId = m.MechanicId
					  GROUP BY MechanicId, Status) IS NULL
   GROUP BY m.MechanicId, (m.FirstName + ' ' + m.LastName)

-- 2nd Solution
SELECT m.FirstName + ' ' + m.LastName
	FROM Mechanics m
	LEFT JOIN Jobs j ON j.MechanicId = m.MechanicId
  WHERE j.Status = 'Finished' OR j.Status IS NULL
  GROUP BY (m.FirstName + ' ' + m.LastName), m.MechanicId
  ORDER BY m.MechanicId