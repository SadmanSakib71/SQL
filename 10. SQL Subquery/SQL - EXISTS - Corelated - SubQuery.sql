-- Show the details of orders made by customers in Germany


-- main query
SELECT *
FROM Sales.Orders AS o
WHERE EXISTS (SELECT *
FROM Sales.Customers AS c
WHERE Country = 'Germany' 
AND o.CustomerID = c.CustomerID
) 


-- sub query
SELECT *
FROM Sales.Customers
WHERE Country = 'Germany'