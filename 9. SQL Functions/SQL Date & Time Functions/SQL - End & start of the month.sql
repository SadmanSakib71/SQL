SELECT 
	OrderID,
	OrderDate,
	CreationTime,
	EOMONTH(CreationTime) AS EndoftheMonth,
	--start of the month
	CAST(DATETRUNC(MONTH, CreationTime) AS date) AS StartoftheMOnth
	

FROM Sales.Orders