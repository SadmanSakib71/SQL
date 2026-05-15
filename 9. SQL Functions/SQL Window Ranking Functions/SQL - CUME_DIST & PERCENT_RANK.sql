-- Find the products that fall within the highest 40% of the prices- Cume dist

SELECT *,
CUME_DIST() OVER(ORDER BY Price DESC) DistRank
FROM Sales.Products

--nested query
SELECT 
	*,
	CONCAT(DistRank * 100, '%') AS DistRankPer
FROM(SELECT *,
CUME_DIST() OVER(ORDER BY Price DESC) DistRank
FROM Sales.Products)t


---------------------- percent Rank

SELECT *,
PERCENT_RANK() OVER(ORDER BY Price DESC) PercentRank
FROM Sales.Products

--nested query

SELECT 
	*,
	CONCAT(PercentRank * 100, '%') AS PercentRankPer
FROM(SELECT *,
PERCENT_RANK() OVER(ORDER BY Price DESC) PercentRank
FROM Sales.Products)t