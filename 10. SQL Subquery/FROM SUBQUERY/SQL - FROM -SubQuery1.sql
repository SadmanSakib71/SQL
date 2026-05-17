-- Rank customer based on their total amounts

-- sub Query
SELECT 
	CustomerID,
	SUM(Sales) AS Totale_sales
FROM Sales.Orders
GROUP BY CustomerID

-- Main query

SELECT 
	*,
	RANK() OVER (ORDER BY Totale_Sales DESC) As Rank_sales
FROM (SELECT 
	CustomerID,
	SUM(Sales) AS Totale_sales
FROM Sales.Orders
GROUP BY CustomerID) t




