-- how many orders were placed in a year and month

SELECT 
	YEAR(OrderDate),
	COUNT (*) NofOrders
FROM Sales.Orders
GROUP BY YEAR(OrderDate)


SELECT 
	--MONTH(OrderDate),
	DATENAME(MONTH, OrderDate),
	COUNT (*) NofOrders	
FROM Sales.Orders
GROUP BY DATENAME(MONTH,OrderDate)