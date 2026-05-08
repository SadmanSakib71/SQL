SELECT 
	OrderID,
	OrderDate,
	CreationTime,
	DATETRUNC(MINUTE , CreationTime) AS minutes_DT,
	DATETRUNC(DAY , CreationTime) AS day_DT,
	DATETRUNC(YEAR , CreationTime) AS years_DT

FROM Sales.Orders

-- how many orders in a month
SELECT 
	DATETRUNC(MONTH , CreationTime) AS Month_DT,
	COUNT(*)
	FROM Sales.Orders
GROUP BY DATETRUNC(MONTH , CreationTime)