--CTE Query

--Step1: Find the total Sales Per Customer
WITH CTE_total_sales AS (
SELECT 
	CustomerID,
	SUM(Sales) AS Total_sales
FROM Sales.Orders
GROUP BY CustomerID),

-- step:2 Find the last order date for each customer
CTE_Last_order AS (
 SELECT 
	CustomerID,
	MAX(OrderDate) AS Last_order
 FROM Sales.Orders
 GROUP BY CustomerID
),

-- Step3: Rank customers based on Total Sales Per Customer

CTE_Customer_Rank AS(
SELECT 
	CustomerID,
	Total_sales,
	RANK() OVER(ORDER BY Total_sales DESC) AS Rank_Customer
FROM CTE_total_sales
),

-- Step4: segment customers based on their total sales
CTE_customer_segment AS(
SELECT 
	*,
	CASE 
	WHEN Total_sales > 100 THEN 'High'
	WHEN Total_sales > 80 THEN 'Medium'
	ELSE 'Low'
	END AS Customer_segments
			
	
FROM CTE_total_sales
)

-- Main Query
SELECT 
	c.*,
	CTE.Total_sales,
	LO.Last_order,
	CTR.Rank_Customer,
	CTCSEG.Customer_segments
FROM Sales.Customers AS c
LEFT JOIN CTE_total_sales AS CTE
ON CTE.CustomerID = c.CustomerID
LEFT JOIN CTE_Last_order AS LO
ON c.CustomerID = LO.CustomerID
LEFT JOIN CTE_Customer_Rank AS CTR
ON c.CustomerID = CTR.CustomerID
LEFT JOIN CTE_customer_segment As CTCSEG
ON c.CustomerID = CTCSEG.CustomerID
