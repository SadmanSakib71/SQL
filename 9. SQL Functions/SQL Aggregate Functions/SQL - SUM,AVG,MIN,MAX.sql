SELECT 
		COUNT(*) AS total_order,
		SUM(sales) As total_sales,
		AVG(Sales) As Avg_sales,
		MAX(Sales) As Max_sales ,
		MIN(Sales) As Min_sales
FROM orders

SELECT *
FROM orders