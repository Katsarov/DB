SELECT * FROM Mountains
SELECT * FROM Peaks

SELECT Mountains.MountainRange, Peaks.PeakName, Peaks.Elevation
	FROM Mountains
	JOIN Peaks ON Mountains.Id = Peaks.MountainId
	WHERE MountainRange = 'Rila'
		ORDER BY Peaks.Elevation DESC
 