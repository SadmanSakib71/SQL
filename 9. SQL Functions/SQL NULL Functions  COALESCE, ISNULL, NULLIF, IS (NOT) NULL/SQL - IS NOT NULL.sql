-- identify the customer who have no score
SELECT 
*

FROM Sales.Customers
WHERE Score IS NOT NULL