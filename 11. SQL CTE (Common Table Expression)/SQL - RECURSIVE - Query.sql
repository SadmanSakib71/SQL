-- Generate a Sequence of Numbers from 1 to 500


--anchor query
WITH Series AS(
SELECT 1 As MyNUmber
UNION ALL
-- recursive query
SELECT 
MyNUmber + 1 AS My_number
FROM Series
WHERE MyNUmber < 500

)

-- Main query
SELECT *
FROM Series
--default recursion is 100
OPTION (MAXRECURSION 500)