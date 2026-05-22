SELECT 
	DATENAME(MONTH, OrderDate) Order_month,
	COUNT(OrderID) Total_order
INTO Sales.MOnthlyOrders
FROM Sales.Orders
GROUP BY DATENAME(MONTH, OrderDate)

DROP TABLE Sales.MOnthlyOrders