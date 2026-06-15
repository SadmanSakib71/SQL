-- Maintain indexes

SELECT 
	tbl.name As Table_Name,
	idx.object_id,
	idx.name As Index_Name,
	idx.type_desc as Index_type,
	idx.is_primary_key As Index_primary_key,
	idx.is_unique  As Index_is_Unique,
	idx.is_disabled As Index_is_disabled,
	sts.user_seeks As userSeek,
	sts.user_scans As userScans,
	sts.user_lookups As userLookups,
	Sts.user_updates As userUpdates,
	COALESCE (sts.last_user_seek,sts.last_user_scan) As lastUpdate

FROM sys.indexes As idx
JOIN sys.tables As tbl
ON idx.object_id =  tbl.object_id

--index details
LEFT JOIN sys.dm_db_index_usage_stats AS sts
ON sts.object_id = idx.object_id
AND sts.index_id = idx.index_id
ORDER BY tbl.name,idx.name

--After that we can see which index is used...like that
SELECT * 
FROM Sales.Products



SELECT * FROM sys.dm_db_index_usage_stats