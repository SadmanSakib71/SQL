-- Segment all orders into 3 categories: high , medium and low sales.

SELECT *,
CASE
	WHEN Buckets = 1 THEN 'HIGH'
	WHEN Buckets = 2 THEN 'LOW'
	WHEN Buckets = 3 THEN 'MEDIUM'
END CATEGORIES
FROM (
SELECT 
	OrderID,
	Sales,
	NTILE(3) OVER (ORDER BY Sales DESC) AS BucKets
FROM Sales.Orders)t