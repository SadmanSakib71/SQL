SELECT 
	OrderID,OrderDate,Sales,
	NTILE(1) OVER(ORDER BY Sales DESC) Bucket_One,
	NTILE(2) OVER(ORDER BY Sales DESC) Bucket_two,
	NTILE(3) OVER(ORDER BY Sales DESC) Bucket_three,
	NTILE(4) OVER(ORDER BY Sales DESC) Bucket_four,
	NTILE(5) OVER(ORDER BY Sales DESC) Bucket_five
FROM Sales.Orders