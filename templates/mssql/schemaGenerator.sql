WITH Computed
AS
(		 SELECT a.name AS colname, a.definition, b.name AS tblname, a.is_computed
		 FROM sys.computed_columns a
		 JOIN sys.tables b
		 ON a.object_id = b.object_id
)
SELECT DISTINCT
       ISNULL((select TOP 1 ISNULL([value],'1') FROM  sys.extended_properties WHERE class = 0 AND name = 'Version'),'1') AS [dbVersion],
       t.TABLE_CATALOG AS [catalog],
       t.TABLE_NAME AS [name],
       t.TABLE_SCHEMA AS [schema],
       c.COLUMN_NAME AS [column],
	  CASE WHEN CC.definition IS NULL THEN c.COLUMN_DEFAULT ELSE CC.definition END AS [defaultValue],
	  ISNULL(CC.is_computed,0) AS [isComputed],
       c.ORDINAL_POSITION AS [order],
       CONVERT(   BIT,
                  CASE
                      WHEN c.IS_NULLABLE = 'NO' THEN
                          0
                      ELSE
                          1
                  END
              ) AS [isNullable],
       c.CHARACTER_MAXIMUM_LENGTH AS [maxLength],
       CASE
           WHEN c.DATETIME_PRECISION > 0 THEN
               c.DATETIME_PRECISION
           ELSE
               c.NUMERIC_PRECISION
       END AS [precision],
       c.NUMERIC_SCALE AS [scale],
       c.DATA_TYPE AS [sqlType],
       tc.CONSTRAINT_NAME AS [constraintName],
       tc.CONSTRAINT_TYPE AS [constraintType],
       CASE
           WHEN tc.CONSTRAINT_TYPE = 'PRIMARY KEY' THEN
           (
               SELECT TOP 1
                      STUFF(
                      (
                          SELECT '{' +
                                 (
                                     SELECT TOP (1)
                                            _ccu.TABLE_NAME + '.' + _ccu.COLUMN_NAME + '}'
                                     FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE _ccu
                                     WHERE _ccu.CONSTRAINT_NAME = fk.[name]
                                 )
                          FROM sys.objects AS o
                              INNER JOIN sys.foreign_keys AS fk
                                  ON o.object_id = fk.parent_object_id
                              INNER JOIN sys.objects AS o2
                                  ON fk.referenced_object_id = o2.object_id
                          WHERE o2.name = t.TABLE_NAME
                          ORDER BY o.[name]
                          FOR XML PATH('')
                      ),
                      1,
                      0,
                      ''
                           ) AS listStr
               FROM sys.objects AS o
                   INNER JOIN sys.foreign_keys AS fk
                       ON o.object_id = fk.parent_object_id
                   INNER JOIN sys.objects AS o2
                       ON fk.referenced_object_id = o2.object_id
               WHERE o2.name = t.TABLE_NAME
               GROUP BY o.[name]
           )
           ELSE
               NULL
       END AS collectionTables,
       CASE
           WHEN tc.CONSTRAINT_TYPE = 'FOREIGN KEY' THEN
           (
               SELECT TOP 1
                      t.name
               FROM sys.foreign_keys AS f
                   INNER JOIN sys.foreign_key_columns AS fc
                       ON f.object_id = fc.constraint_object_id
                   INNER JOIN sys.tables t
                       ON t.object_id = fc.referenced_object_id
               WHERE f.name = tc.CONSTRAINT_NAME
           )
           ELSE
               NULL
       END AS [constraintTable],
       CASE
           WHEN tc.CONSTRAINT_TYPE = 'FOREIGN KEY' THEN
           (
               SELECT TOP (1)
                      _ccu.COLUMN_NAME
               FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE _ccu
                   LEFT JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS _tc
                       ON _tc.CONSTRAINT_NAME = _ccu.CONSTRAINT_NAME
               WHERE _ccu.TABLE_NAME = ccu.TABLE_NAME
                     AND _tc.CONSTRAINT_TYPE = 'Primary Key'
           )
           ELSE
               ccu.COLUMN_NAME
       END AS [constraintColumn],
       (
           SELECT sep.value [Description]
           FROM sys.tables st
               INNER JOIN sys.columns sc
                   ON st.object_id = sc.object_id
               LEFT JOIN sys.extended_properties sep
                   ON st.object_id = sep.major_id
                      AND sc.column_id = sep.minor_id
                      AND sep.name = 'MS_Description'
           WHERE st.name = t.TABLE_NAME
                 AND sc.name = c.COLUMN_NAME
       ) AS columnDescription,
       (
           SELECT STRING_AGG(CAST(ar.value AS NVARCHAR(MAX)), ', ')
           FROM sys.extended_properties ar
               LEFT JOIN sys.tables sep
                   ON sep.object_id = ar.major_id
           WHERE ar.minor_id = 0
                 AND sep.name = c.TABLE_NAME
           GROUP BY sep.name
       ) AS tableExtendedProperties
FROM INFORMATION_SCHEMA.TABLES t
    LEFT JOIN INFORMATION_SCHEMA.COLUMNS c
        ON c.TABLE_NAME = t.TABLE_NAME
           AND c.TABLE_SCHEMA = t.TABLE_SCHEMA
           AND t.TABLE_CATALOG = c.TABLE_CATALOG
    LEFT JOIN INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE ccu
        ON ccu.COLUMN_NAME = c.COLUMN_NAME
           AND ccu.TABLE_NAME = c.TABLE_NAME
           AND ccu.TABLE_SCHEMA = c.TABLE_SCHEMA
           AND ccu.TABLE_CATALOG = c.TABLE_CATALOG
    LEFT JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE kcu
        ON kcu.CONSTRAINT_NAME = ccu.CONSTRAINT_NAME
    LEFT JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc
        ON tc.CONSTRAINT_NAME = ccu.CONSTRAINT_NAME
	LEFT JOIN Computed CC ON CC.tblname = T.TABLE_NAME
			AND CC.colname = C.COLUMN_NAME
WHERE t.TABLE_TYPE = 'BASE TABLE'
      AND t.TABLE_NAME NOT LIKE 'sys%'
      AND t.TABLE_NAME NOT LIKE 'webpages_%'
      AND t.TABLE_NAME NOT LIKE '%Raw%'
      AND t.TABLE_NAME NOT LIKE '\_%' ESCAPE '\'
ORDER BY [name],
         [order];