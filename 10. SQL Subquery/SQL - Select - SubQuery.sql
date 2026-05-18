-- Show the product IDs, product names, prices, and the total number of orders

-- Main query
SELECT 
	*,
-- Sub query
	(SELECT COUNT(*)  FROM Sales.Orders) AS total_orders
FROM Sales.Products

