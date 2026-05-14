-- find the total number of orders
-- prodvide details orderId,orderDate
-- find the total number of orders for each customers
SELECT
	OrderID,
	OrderDate,
	CustomerID,
	COUNT(*) OVER() As Total_orders,
	COUNT(*) OVER ( PARTITION BY CustomerID) AS Orders_By_Customer
FROM Sales.Orders


SELECT 
	*
FROM Sales.Orders