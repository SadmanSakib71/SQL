SELECT 
	OrderID,
	OrderDate,
	CreationTime,
	DATENAME(month,CreationTime) AS month_name,
	DATENAME(WEEKDAY,CreationTime) AS day_name

FROM Sales.Orders