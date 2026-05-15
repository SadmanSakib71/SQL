-- Find the lowest and highest sales for each product
SELECT 
	OrderID,
	ProductID,
	Sales,
	FIRST_VALUE(Sales) OVER(PARTITION BY ProductId ORDER BY Sales) As Lowest_sales,
	MIN(Sales) OVER(PARTITION BY ProductId) As Lowest_sales2,
	FIRST_VALUE(Sales) OVER(PARTITION BY ProductId ORDER BY Sales DESC) As Highest_sales,
	-- for highest value you can try the both way
	LAST_VALUE(Sales) OVER (PARTITION BY ProductId ORDER BY Sales ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING)  AS Highest_sales2,
	MAX(Sales) OVER(PARTITION BY ProductId) As Highest_sales3
FROM Sales.Orders