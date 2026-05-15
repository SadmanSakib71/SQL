-- Find the top highest sales for each product
SELECT 
	OrderID,
	OrderDate,
	Sales,
	ROW_NUMBER() OVER (PARTITION BY ProductID ORDER BY Sales DESC) AS Rank_By_Product 
FROM Sales.Orders

-- now query
SELECT *
FROM(SELECT 
	OrderID,
	OrderDate,
	Sales,
	ROW_NUMBER() OVER (PARTITION BY ProductID ORDER BY Sales DESC) AS Rank_By_Product 
FROM Sales.Orders)t WHERE Rank_By_Product = 1