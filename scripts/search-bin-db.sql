DECLARE @SearchVal VARBINARY(100) = 0x9FCBA5AB
DECLARE @SearchValLE VARBINARY(100) = 0xABA5CB9F

DECLARE @Results TABLE (TableName NVARCHAR(256), ColumnName NVARCHAR(256), ColumnValue NVARCHAR(MAX))
DECLARE @Sql NVARCHAR(MAX)
DECLARE @TableName NVARCHAR(256), @ColumnName NVARCHAR(256)

DECLARE col_cursor CURSOR FOR
SELECT t.name, c.name
FROM sys.tables t
INNER JOIN sys.columns c ON t.object_id = c.object_id
INNER JOIN sys.types y ON c.user_type_id = y.user_type_id
WHERE y.name IN ('binary', 'varbinary', 'image')

OPEN col_cursor
FETCH NEXT FROM col_cursor INTO @TableName, @ColumnName

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @Sql = 'SELECT ''' + @TableName + ''', ''' + @ColumnName + ''', ''0x'' + sys.fn_varbintohexstr([' + @ColumnName + ']) FROM [' + @TableName + '] WHERE [' + @ColumnName + '] = @SearchVal OR [' + @ColumnName + '] = @SearchValLE'
    BEGIN TRY
        INSERT INTO @Results
        EXEC sp_executesql @Sql, N'@SearchVal VARBINARY(100), @SearchValLE VARBINARY(100)', @SearchVal, @SearchValLE
    END TRY
    BEGIN CATCH
    END CATCH

    FETCH NEXT FROM col_cursor INTO @TableName, @ColumnName
END

CLOSE col_cursor
DEALLOCATE col_cursor

SELECT * FROM @Results
