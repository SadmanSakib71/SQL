-- Step1: Find the total Sales Per Customer
-- Step2: Find the last order date for each customer


--CTE Query

--step:1
WITH CTE_total_sales AS (
SELECT 
	CustomerID,
	SUM(Sales) AS Total_sales
FROM Sales.Orders
GROUP BY CustomerID),

-- step:2
CTE_Last_order AS (
 SELECT 
	CustomerID,
	MAX(OrderDate) AS Last_order
 FROM Sales.Orders
 GROUP BY CustomerID
)



-- Main Query
SELECT 
	c.*,
	CTE.Total_sales,
	LO.Last_order
FROM Sales.Customers AS c
LEFT JOIN CTE_total_sales AS CTE
ON CTE.CustomerID = c.CustomerID
LEFT JOIN CTE_Last_order AS LO
ON c.CustomerID = LO.CustomerID
