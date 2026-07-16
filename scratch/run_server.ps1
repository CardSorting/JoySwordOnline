$env:Path = "C:\Users\media\AppData\Local\Programs\Python\Python311;" + $env:Path
Set-Location "c:\Users\media\Downloads\JoySwordOffline - Copy"
& ".\Start-Server-Automatic.ps1" -PublicIP 136.36.127.72 -SkipFirewall
