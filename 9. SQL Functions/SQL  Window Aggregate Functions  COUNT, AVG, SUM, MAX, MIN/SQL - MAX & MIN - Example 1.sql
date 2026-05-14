-- show the employes who have the highest salaries

SELECT *,
	MAX(Salary) OVER() AS Highest_Salary
FROM Sales.Employees

-- nested Query
SELECT *
FROM(SELECT *,
	MAX(Salary) OVER() AS Highest_Salary
FROM Sales.Employees) t 
WHERE Salary = Highest_Salary