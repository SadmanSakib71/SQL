-- Display the full name of customers in a single field
-- by merging their first and last names,
-- and add 10 bonus points to each customer's score.

SELECT 
FirstName,
LastName,
Score,
COALESCE(FirstName, '') AS New_First_name,
COALESCE(LastName, '') As New_Last_name,
COALESCE(Score, 0) AS New_Score,
COALESCE(FirstName, '') +  ' ' + COALESCE(LastName, '') AS Full_name,
COALESCE(Score, 0) + 10 AS Bonus_point

FROM Sales.Customers