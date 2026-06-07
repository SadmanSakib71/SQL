-- filltered index

SELECT *
FROM Sales.Customers
WHERE Country = 'USA'

CREATE NONCLUSTERED INDEX index_country
ON Sales.Customers (Country)
WHERE Country = 'USA'