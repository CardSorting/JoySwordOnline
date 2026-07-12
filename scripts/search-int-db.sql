DECLARE @SearchVal1 BIGINT = 2681054635
DECLARE @SearchVal2 BIGINT = -1613912661
DECLARE @SearchVal3 BIGINT = 2880023455
DECLARE @SearchVal4 BIGINT = -1414943841

DECLARE @Results TABLE (TableName NVARCHAR(256), ColumnName NVARCHAR(256), ColumnValue NVARCHAR(MAX))
DECLARE @Sql NVARCHAR(MAX)
DECLARE @TableName NVARCHAR(256), @ColumnName NVARCHAR(256)

DECLARE col_cursor CURSOR FOR
SELECT t.name, c.name
FROM sys.tables t
INNER JOIN sys.columns c ON t.object_id = c.object_id
INNER JOIN sys.types y ON c.user_type_id = y.user_type_id
WHERE y.name IN ('int', 'bigint', 'smallint', 'tinyint', 'numeric', 'decimal')

OPEN col_cursor
FETCH NEXT FROM col_cursor INTO @TableName, @ColumnName

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @Sql = 'SELECT ''' + @TableName + ''', ''' + @ColumnName + ''', CAST([' + @ColumnName + '] AS NVARCHAR(MAX)) FROM [' + @TableName + '] WHERE [' + @ColumnName + '] IN (' + CAST(@SearchVal1 AS NVARCHAR(20)) + ', ' + CAST(@SearchVal2 AS NVARCHAR(20)) + ', ' + CAST(@SearchVal3 AS NVARCHAR(20)) + ', ' + CAST(@SearchVal4 AS NVARCHAR(20)) + ')'
    BEGIN TRY
        INSERT INTO @Results
        EXEC sp_executesql @Sql
    END TRY
    BEGIN CATCH
    END CATCH

    FETCH NEXT FROM col_cursor INTO @TableName, @ColumnName
END

CLOSE col_cursor
DEALLOCATE col_cursor

SELECT * FROM @Results
