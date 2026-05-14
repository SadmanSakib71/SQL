-- Find all orders where sales are higher than the average sales across all orders

SELECT 
	OrderID,
	OrderDate,
	Sales,
	AVG(Sales) OVER() AS Avg_sales
FROM Sales.Orders

-- do the subQuery
SELECT *
FROM (SELECT 
	OrderID,
	OrderDate,
	Sales,
	AVG(Sales) OVER() AS Avg_sales
FROM Sales.Orders) AVGSales 
WHERE Sales > Avg_sales