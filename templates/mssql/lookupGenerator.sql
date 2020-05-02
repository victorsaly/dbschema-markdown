SELECT objname AS tableName,
       value AS tableDescription
FROM fn_listextendedproperty(NULL, 'schema', 'dbo', 'table', NULL, NULL, NULL)
WHERE CAST([value] AS NVARCHAR(50)) LIKE '%lookup%'
      AND objname COLLATE SQL_Latin1_General_CP1_CI_AS NOT IN
          (
              SELECT t.name AS TableName
              FROM sys.tables t
                  INNER JOIN sys.partitions p
                      ON t.object_id = p.object_id
              WHERE t.name NOT LIKE 'dt%'
                    AND t.is_ms_shipped = 0
                    AND p.rows = 0
                    OR p.rows > 400
              GROUP BY t.name,
                       p.rows
          )
ORDER BY objname;