# dump-proc.ps1
sqlcmd.exe -S localhost\SQLEXPRESS -E -y 0 -Q "USE Game01; SELECT OBJECT_DEFINITION(OBJECT_ID(N'dbo.gup_create_unit'))" | Out-File D:\JoySword\gup_create_unit.txt -Encoding utf8
