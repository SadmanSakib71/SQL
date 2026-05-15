-- Analyze the month-over-month performance by finding the percentage change
-- in sales between the current and previous months

SELECT 
	MONTH(OrderDate) As Order_MOnth,
	SUM(Sales) As Current_Sales,
	LAG( SUM(Sales)) OVER(ORDER BY MONTH(OrderDate)) As Previous_month_sales
FROM Sales.Orders
GROUP BY MONTH(OrderDate)

--now do sub Query

SELECT *,
	Current_Sales - Previous_month_sales As Month_over_Change_sales,
	ROUND(CAST((Current_Sales - Previous_month_sales)AS float )/ Previous_month_sales * 100, 1)
FROM (SELECT 
	MONTH(OrderDate) As Order_MOnth,
	SUM(Sales) As Current_Sales,
	LAG( SUM(Sales)) OVER(ORDER BY MONTH(OrderDate)) As Previous_month_sales
FROM Sales.Orders
GROUP BY MONTH(OrderDate)) t