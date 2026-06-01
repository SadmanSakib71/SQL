-- Composite Index

SELECT *
FROM Sales.DBCustomers
WHERE Country = 'USA' AND  Score > 500

CREATE INDEX index_DBCustomers_CountryScore 
ON Sales.DBCustomers (Country, Score)