-- Show all customer details and find the total orders of each customer

-- Main Query
SELECT 
	c.*,
	o.Total_orders
FROM Sales.Customers As c
LEFT JOIN (
-- sub query
SELECT 
	CustomerID,
	COUNT(*) AS Total_orders
FROM Sales.Orders 
GROUP BY CustomerID) As o
ON c.CustomerID = o.CustomerID


