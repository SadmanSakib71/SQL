SELECT 
	OrderID,
	OrderDate,
	CreationTime,
	DATEPART(year,CreationTime ) AS year_DP,
	DATEPART(month,CreationTime ) AS MOnth_DP,
	DATEPART(day,CreationTime ) AS Day_DP,
	DATEPART(quarter,CreationTime ) AS Quarter_DP,
	DATEPART(week,CreationTime ) AS WeekDay_DP
	

FROM Sales.Orders