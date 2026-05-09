SELECT 
	OrderID,
	CreationTime,
	FORMAT (CreationTime, 'dd') AS DD,
	FORMAT (CreationTime, 'ddd') AS DDD,
	FORMAT (CreationTime, 'dddd') AS DDDD,
	FORMAT (CreationTime, 'MM') AS MM,
	FORMAT (CreationTime, 'MMM') AS MMM,
	FORMAT (CreationTime, 'MMMM') AS MMMM,
	FORMAT (CreationTime, 'dd-MM-yyyy') AS Europe
FROM Sales.Orders


-- Show CreationTime using the following format:
-- Day Wed Jan Q1 2025 12:34:56 PM

SELECT 
	OrderID,
	CreationTime,
	'Day ' + FORMAT (CreationTime, 'ddd MMM') + ' Q' + DATENAME(QUARTER,CreationTime) +
	' ' + FORMAT (CreationTime, 'yyyy hh:mm:ss tt')  AS Custom_Format
FROM Sales.Orders