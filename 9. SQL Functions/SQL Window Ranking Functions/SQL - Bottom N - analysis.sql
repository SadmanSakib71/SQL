-- Find the 2 lowest customers based on their total sales - bottom N analysis
SELECT 
	CustomerId,
	SUM(Sales) As Total_Sales,
	ROW_NUMBER() OVER ( ORDER BY SUM(Sales)) AS Rank_By_Customers_sale
FROM Sales.Orders
GROUP BY CustomerID


SELECT *
FROM (SELECT 
	CustomerId,
	SUM(Sales) As Total_Sales,
	ROW_NUMBER() OVER ( ORDER BY SUM(Sales)) AS Rank_By_Customers_sale
FROM Sales.Orders
GROUP BY CustomerID)t WHERE Rank_By_Customers_sale <=2
