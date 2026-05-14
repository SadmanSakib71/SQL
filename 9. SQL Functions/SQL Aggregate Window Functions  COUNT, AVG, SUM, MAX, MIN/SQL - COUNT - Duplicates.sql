-- find in the table "orders" the duplicate rows
SELECT 
	OrderID,
	-- if the result is 1 then it's ok.
	COUNT(*) OVER(PARTITION BY OrderID) AS OrderPk
FROM Sales.Orders


SELECT 
	OrderID,
	-- if the result is 1 then it's ok.
	COUNT(*) OVER(PARTITION BY OrderID) AS OrderPk
FROM Sales.OrdersArchive


-- now get the duplicates
SELECT *
FROM(SELECT 
	OrderID,
	-- if the result is 1 then it's ok.
	COUNT(*) OVER(PARTITION BY OrderID) AS OrderPk
FROM Sales.OrdersArchive) PK WHERE OrderPk > 1
