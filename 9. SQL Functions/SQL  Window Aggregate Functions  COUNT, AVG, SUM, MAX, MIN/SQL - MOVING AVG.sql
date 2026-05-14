-- Calculate moving average of sales for each product over time or every month
SELECT 
	OrderId,
	OrderDate,
	Sales,
	ProductID,
	AVG(Sales) OVER (PARTITION BY ProductId) AS Avg_sales_BY_Product,
	AVG(Sales) OVER (PARTITION BY ProductId ORDER BY OrderDate) AS Avg_sales_Moving
FROM Sales.Orders



-- Calculate moving average of sales for each product over time or every month,including only the next order
SELECT 
	OrderId,
	OrderDate,
	Sales,
	ProductID,
	AVG(Sales) OVER (PARTITION BY ProductId) AS Avg_sales_BY_Product,
	AVG(Sales) OVER (PARTITION BY ProductId ORDER BY OrderDate) AS Avg_sales_Moving,
	AVG(Sales) OVER (PARTITION BY ProductId ORDER BY OrderDate ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING) AS Rolling_sales
FROM Sales.Orders