--  find the total sales of each product
-- add details such as order Id, order date
SELECT 
	ProductID,
	OrderID,
	OrderDate,
	SUM(Sales) AS Total_sales
FROM Sales.Orders
GROUP BY 
	ProductID,
	OrderID,
	OrderDate



-- now solve with window partion
SELECT
	ProductID,
	OrderID,
	OrderDate,
	SUM(Sales) OVER(PARTITION BY ProductID) AS Total_sales_product
FROM Sales.Orders