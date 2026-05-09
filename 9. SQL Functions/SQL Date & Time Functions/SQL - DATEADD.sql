SELECT
	CreationTime,
	DATEADD (YEAR , 1, CreationTime) AS DATE_ADD_Year,
	DATEADD (YEAR ,-1, CreationTime) AS DATE_ADD_Year,
	DATEADD (MONTH , 3, CreationTime) AS DATE_ADD_MOnth,
	DATEADD (Month , -2, CreationTime) AS DATE_ADD_Month
FROM Sales.Orders