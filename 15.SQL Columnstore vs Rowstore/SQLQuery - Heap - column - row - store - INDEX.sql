-- Heap 
SELECT *
INTO FactInternetSales_Heap
FROM FactInternetSales

-- columnstore

SELECT *
INTO FactInternetSales_CS
FROM FactInternetSales

CREATE CLUSTERED COLUMNSTORE INDEX index_FactInternetSales_pk
ON FactInternetSales_CS


-- rowstore
SELECT *
INTO FactInternetSales_RS
FROM FactInternetSales

CREATE CLUSTERED INDEX index_FactInternetSales_RS_pk
ON FactInternetSales_RS(SalesOrderNumber,SalesOrderLineNumber)