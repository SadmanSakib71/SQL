-- get employe details with gender displayed as full text
SELECT *,
CASE 
	WHEN Gender = 'M' THEN  'Male'
	WHEN Gender = 'F' THEN 'FeMale'
END New_gender
FROM Sales.Employees


SELECT *,
CASE
	WHEN Country = 'Germany' THEN 'DB'
	WHEN Country = 'USA' THEN 'US'
	ELSE 'N/A'
END Country_code,
-- use CASE 2
CASE Country
	WHEN 'Germany' THEN 'DB'
	WHEN 'USA' THEN  'US'
ENd Country_code_2
FROM Sales.Customers


SELECT DISTINCT Country
FROM Sales.Customers