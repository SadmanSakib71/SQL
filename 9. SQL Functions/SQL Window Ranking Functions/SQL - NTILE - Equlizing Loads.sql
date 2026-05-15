-- In order to export the data, divide the orders into 4 groups.

SELECT
    NTILE(4) OVER ( ORDER BY OrderId  ) Bucket, 
    *
FROM Sales.Orders