-- Find the average sales across all orders
-- And Find the average sales for each product
-- Additionally, provide details such order Id, order date

SELECT 
	OrderID,
	OrderDate,
	Sales,
	AVG(Sales) OVER() AS Avg_Sales,
	ProductId,
	AVG(Sales) OVER(PARTITION BY ProductID) AS Avg_Sales_BY_Product
FROM Sales.Orders