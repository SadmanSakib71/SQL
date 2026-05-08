SELECT 
	OrderID,
	OrderDate,
	CreationTime,
	YEAR(CreationTime) As Year,
	MONTH(CreationTime) AS Month,
	DAY(CreationTime) AS Day
	

FROM Sales.Orders