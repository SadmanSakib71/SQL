-- Find the highest and lowest sales of all orders
-- Find the highest and lowest sales for each product
-- Additionally provide details such order Id, order date

SELECT 
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	MAX(Sales) OVER() AS Highest_Sales,
	MIN(Sales) OVER() AS Lowest_Sales,
	MAX(Sales) OVER(PARTITION BY ProductID) AS Highest_Sales_BYProdcut,
	MIN(Sales) OVER(PARTITION BY ProductID) AS Lowest_Sales_BYProdcut

FROM Sales.Orders