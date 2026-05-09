

SELECT 
	OrderID,
	CreationTime,
	CONVERT (DATE, CreationTime) AS [Date Convert],
	CONVERT (varchar , CreationTime , 32) AS [USA Format],
	CONVERT (varchar , CreationTime , 34) AS [EU Format]
FROM Sales.Orders