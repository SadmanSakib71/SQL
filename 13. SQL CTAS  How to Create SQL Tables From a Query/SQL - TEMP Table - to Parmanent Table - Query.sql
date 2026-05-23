--create temp table
SELECT *
INTO #Orders_New
FROM Sales.Orders

-- delete some data
DELETE FROM #Orders_New
WHERE OrderStatus = 'Delivered'



--temp data will get only this query
SELECT *
FROM #Orders_New

-- save for the permanent table
SELECT *
INTO Sales.Order_Shipped
FROM #Orders_New

-- get data from paramanent table
SELECT *
FROM Sales.Order_Shipped