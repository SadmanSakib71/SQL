SELECT
	CAST ('123' AS int) AS [STG to INT],
	CAST (123 AS varchar) AS [INT to STG],
	CreationTime,
	CAST (CreationTime AS date) AS [CAST DATe]
FROM Sales.Orders