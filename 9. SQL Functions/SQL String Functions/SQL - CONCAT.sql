-- Show a list of customers' first names together with their country in one column.

SELECT 
CONCAT (FirstName ,' ', Country) AS Name_Country
FROM Sales.Customers