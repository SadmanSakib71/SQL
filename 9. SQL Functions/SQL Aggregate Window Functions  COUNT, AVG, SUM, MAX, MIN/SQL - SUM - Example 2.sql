-- Find the percentage contribution of each product's sales to the total sales
SELECT 
	ProductID,
	Sales,
 	SUM(Sales) OVER () As Total_sales,
	ROUND( CAST(Sales AS float) / SUM(Sales) OVER () * 100 , 2)   AS Percentage
FROM Sales.Orders