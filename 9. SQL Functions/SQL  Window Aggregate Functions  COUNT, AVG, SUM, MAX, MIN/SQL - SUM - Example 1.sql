-- Find the total sales across all orders
-- And the total sales for each product
-- Additionally, provide details such order Id, order date

SELECT 
	OrderID,
	OrderDate,
	Sales,
	SUM(Sales) OVER () as Total_Sales,
	ProductID,
	SUM(Sales) OVER (PARTITION BY ProductID) AS Total_sales_ByProduct
FROM Sales.Orders
