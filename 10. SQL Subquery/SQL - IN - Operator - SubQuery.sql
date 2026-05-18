-- Show the details of orders made by customers in Germany

-- Main query
SELECT 
	*
FROM Sales.Orders
--WHERE CustomerID In (1,4)
WHERE CustomerID IN 
	(SELECT 
	CustomerID
	FROM Sales.Customers
	WHERE Country = 'Germany')
