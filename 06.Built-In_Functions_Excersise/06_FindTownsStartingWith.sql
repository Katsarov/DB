SELECT *
	FROM Towns
	WHERE [Name] LIKE '[M,K,B,E]%'
	ORDER BY [Name]

--2nd Solution

SELECT *
	FROM Towns
	WHERE LEFT([Name], 1) IN ('M','K','B','E')
	ORDER BY [Name]