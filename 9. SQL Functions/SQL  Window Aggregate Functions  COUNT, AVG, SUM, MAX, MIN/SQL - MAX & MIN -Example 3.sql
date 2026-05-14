-- Find the deviation of each sales from the minimum and maximum sales amounts

SELECT 
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	MAX(Sales) OVER() AS Highest_Sales,
	MIN(Sales) OVER() AS Lowest_Sales,
	MAX(Sales) OVER(PARTITION BY ProductID) AS Highest_Sales_BYProdcut,
	MIN(Sales) OVER(PARTITION BY ProductID) AS Lowest_Sales_BYProdcut,
	Sales - MIN(Sales) OVER() AS Lowest_Sales_Deviation,
	MAX(Sales) OVER() - Sales AS Highest_Sales_Deviation


FROM Sales.Orders