$Password = $env:JOYSWORD_SA_PASSWORD
if (-not $Password) { throw "Set `$env:JOYSWORD_SA_PASSWORD before running." }
$IP = "159.203.165.171"

$SearchQuery = @"
DECLARE @SearchStr NVARCHAR(100) = '$IP'
DECLARE @Results TABLE (TableName NVARCHAR(256), ColumnName NVARCHAR(256), ColumnValue NVARCHAR(MAX))

DECLARE @Sql NVARCHAR(MAX)
DECLARE @TableName NVARCHAR(256), @ColumnName NVARCHAR(256)

DECLARE col_cursor CURSOR FOR
SELECT t.name, c.name
FROM sys.tables t
INNER JOIN sys.columns c ON t.object_id = c.object_id
INNER JOIN sys.types y ON c.user_type_id = y.user_type_id
WHERE y.name IN ('varchar', 'char', 'nvarchar', 'nchar', 'text', 'ntext')

OPEN col_cursor
FETCH NEXT FROM col_cursor INTO @TableName, @ColumnName

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @Sql = 'SELECT ''' + @TableName + ''', ''' + @ColumnName + ''', CAST([' + @ColumnName + '] AS NVARCHAR(MAX)) FROM [' + @TableName + '] WHERE [' + @ColumnName + '] LIKE ''%' + @SearchStr + '%'''
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
"@

foreach ($db in @("Account", "Game01", "ES_BILLING", "Statistics")) {
    Write-Host "Searching DB: $db"
    sqlcmd -S tcp:127.0.0.1,1433 -U sa -P $Password -d $db -Q $SearchQuery
}
