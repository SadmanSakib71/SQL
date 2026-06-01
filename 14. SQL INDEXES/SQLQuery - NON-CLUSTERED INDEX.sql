-- NONCLUSTERED INdex,here you can multiple clustered
SELECT *
FROM Sales.DBCustomers
WHERE FirstName = 'Anna'

CREATE NONCLUSTERED INDEX index_DBCustomers_FirstName 
ON Sales.DBCustomers (FirstName)

CREATE NONCLUSTERED INDEX index_DBCustomers_LastName 
ON Sales.DBCustomers (LastName)