-- Task: Show the employee hierarchy by displaying each employee's level within the organization

-- anchor query
WITH CTE_employee_hierarchy As ( SELECT 
	EmployeeID,
	FirstName,
	LastName,
	ManagerID,
	1 AS Level
FROM Sales.Employees
WHERE ManagerID IS NULL
UNION ALL
-- recursive query
SELECT 
	e.EmployeeID,
	e.FirstName,
	e.LastName,
	e.ManagerID,
	Level + 1
FROM Sales.Employees AS e
INNER JOIN CTE_employee_hierarchy AS CEH
ON e.ManagerID = CEH.EmployeeID
)

-- Main query
SELECT * FROM CTE_employee_hierarchy

-- for test

SELECT 
	EmployeeID,
	FirstName,
	LastName,
	ManagerID
FROM Sales.Employees
