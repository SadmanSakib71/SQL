WITH Orders AS (
    SELECT 1 Id, 'A' Category UNION
    SELECT 2, NULL UNION
    SELECT 3, '' UNION
    SELECT 4, '  '
)
SELECT
    *,
    DATALENGTH(Category) CategoryLen,
    DATALENGTH(TRIM(Category)) AS policy_1,
    NULLIF( Category, '') AS policy_2,
    COALESCE( NULLIF( Category, ''), 'unknown') AS policy_3
FROM Orders