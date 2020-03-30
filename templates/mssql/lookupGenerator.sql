SELECT objname AS tableName,
       value AS tableDescription
FROM fn_listextendedproperty(NULL, 'schema', 'dbo', 'table', NULL, NULL, NULL)
WHERE CAST([value] AS NVARCHAR(50)) LIKE '%lookup%'
ORDER BY objname;