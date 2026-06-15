SELECT 
	Fs.SalesOrderNumber,
	Dp.EnglishProductName,
	Dp.Color
FROM FactInternetSales Fs
INNER JOIN DimProduct Dp
ON Fs.ProductKey = Dp.ProductKey
WHERE Dp.Color = 'Black'
AND Fs.OrderDateKey BETWEEN 20101229 AND 20101231

SELECT * FROM Sys.dm_db_missing_index_details
