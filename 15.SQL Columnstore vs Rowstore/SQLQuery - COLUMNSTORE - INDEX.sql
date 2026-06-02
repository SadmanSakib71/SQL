-- you can create only one columnstore Clustered or nonclustered in a table

CREATE CLUSTERED COLUMNSTORE INDEX index_DBCustomers_CS 
ON Sales.DBCustomers

-- after delete a index
DROP INDEX index_DBCustomers_CS ON Sales.DBCustomers

-- this will work
CREATE NONCLUSTERED COLUMNSTORE INDEX index_DBCustomers_CS_FirstName
ON sales.DBCustomers(FirstName)