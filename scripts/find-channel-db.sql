DECLARE @name NVARCHAR(100);
DECLARE db_cursor CURSOR FOR
SELECT name FROM sys.databases WHERE database_id > 4;
OPEN db_cursor;
FETCH NEXT FROM db_cursor INTO @name;
WHILE @@FETCH_STATUS = 0
BEGIN
    DECLARE @sql NVARCHAR(MAX) = 'IF OBJECT_ID(''' + @name + '..LChannelList'') IS NOT NULL PRINT ''Found in DB: ' + @name + '''';
    EXEC sp_executesql @sql;
    FETCH NEXT FROM db_cursor INTO @name;
END;
CLOSE db_cursor;
DEALLOCATE db_cursor;
