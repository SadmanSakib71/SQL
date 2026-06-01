-- clustered index,cannot create more than one clustered index on table
CREATE CLUSTERED INDEX index_DBCustomers_CustomerID
ON Sales.DBCustomers (CustomerID)

-- delete the index,and after that we can add a clustered index
DROP INDEX index_DBCustomers_CustomerID ON Sales.DBCustomers