-- Show all customer details and find the total orders of each customer

--coarelated subquery
SELECT 
	*,
	(SELECT COUNT(*) FROM Sales.Orders As o WHERE o.CustomerID = c.CustomerID) As Total_sales
FROM Sales.Customers AS c