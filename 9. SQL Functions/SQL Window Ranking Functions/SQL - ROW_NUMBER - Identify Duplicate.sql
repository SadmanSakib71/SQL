-- Identify duplicate rows in the table 'Orders Archive'
-- and return a clean result without any duplicates
SELECT
	ROW_NUMBER() OVER (PARTITION BY OrderId ORDER BY CreationTime DESC) RN,
	*
FROM Sales.OrdersArchive

SELECT *
FROM (SELECT
	ROW_NUMBER() OVER (PARTITION BY OrderId ORDER BY CreationTime DESC) RN,
	*
FROM Sales.OrdersArchive)t WHERE RN > 1