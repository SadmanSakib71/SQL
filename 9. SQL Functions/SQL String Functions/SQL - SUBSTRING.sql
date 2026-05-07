SELECT
FirstName,
SUBSTRING (FirstName , 2 , LEN(FirstName))

FROM Sales.Customers