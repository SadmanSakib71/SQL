-- create view like table

-- here Sales is schema otherwise it will get db by default
CREATE VIEW Sales.V_monthly_summary AS (
SELECT 
	DATETRUNC(month,OrderDATE) AS Order_Month,
	SUM(Sales) AS Total_sales,
	COUNT(OrderID) AS Total_orders,
	SUM(Quantity) AS Total_quantity
FROM  Sales.Orders
GROUP BY DATETRUNC(month,OrderDATE))