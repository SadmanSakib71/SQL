/* Create report showing total sales for each of the following categories: 
High (sales over 50), Medium (sales 21-50), and Low (sales 20 or less) 
Sort the categories from highest sales to lowest */

SELECT 
	Category,
	SUM(Sales) AS Total_sales
FROM (
SELECT 
OrderID,
Sales,
CASE
	WHEN Sales > 50 THEN 'HIGH'
	WHEN Sales > 20  THEN 'MEDIUM'
	ELSE 'LOW'
END Category
FROM Sales.Orders)t --table name
GROUP BY Category
ORDER BY Total_sales DESC


-- get the category

SELECT 
OrderID,
Sales,
CASE
	WHEN Sales > 50 THEN 'HIGH'
	WHEN Sales > 20  THEN 'MEDIUM'
	ELSE 'LOW'
END Category
FROM Sales.Orders
