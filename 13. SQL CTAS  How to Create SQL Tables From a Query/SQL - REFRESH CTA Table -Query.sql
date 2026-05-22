IF OBJECT_ID ('Sales.MOnthlyOrders','U') IS NOT NULL
DROP TABLE Sales.MOnthlyOrders;

GO

SELECT 
	DATENAME(MONTH, OrderDate) Order_month,
	COUNT(OrderID) Total_order
INTO Sales.MOnthlyOrders
FROM Sales.Orders
GROUP BY DATENAME(MONTH, OrderDate)

