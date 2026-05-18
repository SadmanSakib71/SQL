-- Find female employees whose salaries are greater 
-- than the salaries of any male employees

-- Main query
SELECT *
FROM Sales.Employees
WHERE Gender = 'F'
--sub query
AND Salary > ANY (SELECT Salary FROM Sales.Employees WHERE Gender = 'M') 


SELECT *
FROM Sales.Employees
WHERE Gender = 'F'
AND Salary > ALL (SELECT Salary FROM Sales.Employees WHERE Gender = 'M') 


