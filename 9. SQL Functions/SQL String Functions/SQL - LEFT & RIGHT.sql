SELECT
FirstName,
LEFT (FirstName, 2) AS leftword,
RIGHT (FirstName, 2) AS rightword
FROM Sales.Customers