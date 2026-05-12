--  find the total sales across all orders
--  find the total sales for each product
--  find the total sales for each combination of product and order status
-- add details such as order Id, order date

SELECT
	OrderID,
	OrderDate,
	ProductID,
	OrderStatus,
	Sales,
	SUM(Sales) OVER() AS Total_sales,
	SUM(Sales) OVER(PARTITION BY ProductID) AS Total_sales_BY_Product,
	SUM(Sales) OVER(PARTITION BY ProductID , OrderStatus) AS Total_sales_BY_ProductAndStatus
FROM Sales.Orders

