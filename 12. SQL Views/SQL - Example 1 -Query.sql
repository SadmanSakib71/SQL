-- find the running total of sales for each month

WITH CTE_monthly_summary AS (
SELECT 
	DATETRUNC(month,OrderDATE) AS Order_Month,
	SUM(Sales) AS Total_sales
FROM  Sales.Orders
GROUP BY DATETRUNC(month,OrderDATE) )

SELECT 
	Order_Month,
	Total_sales,
	SUM(Total_sales) OVER (ORDER BY Order_Month) As Running_total
FROM CTE_monthly_summary