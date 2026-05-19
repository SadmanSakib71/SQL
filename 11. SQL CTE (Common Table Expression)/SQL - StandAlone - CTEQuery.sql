-- Step1: Find the total Sales Per Customer
--CTE Query
WITH CTE_total_sales AS (
SELECT 
	CustomerID,
	SUM(Sales) AS Total_sales
FROM Sales.Orders
GROUP BY CustomerID) 

-- Main Query
SELECT 
	c.*,
	CTE.Total_sales
FROM Sales.Customers AS c
LEFT JOIN CTE_total_sales AS CTE
ON CTE.CustomerID = c.CustomerID
