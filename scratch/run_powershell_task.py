import subprocess

ps_script = """
# Unregister task if it exists
Unregister-ScheduledTask -TaskName "JoySwordServerStart" -Confirm:$false -ErrorAction SilentlyContinue

$Action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-WindowStyle Hidden -ExecutionPolicy Bypass -File 'c:\\Users\\media\\Downloads\\JoySwordOffline - Copy\\scratch\\run_server.ps1'"
Register-ScheduledTask -TaskName "JoySwordServerStart" -Action $Action -User "SYSTEM"
Start-ScheduledTask -TaskName "JoySwordServerStart"
Start-Sleep -Seconds 2
Get-ScheduledTask -TaskName "JoySwordServerStart" | Get-ScheduledTaskInfo
"""

print("Registering and launching persistent Scheduled Task...")
result = subprocess.run(["powershell.exe", "-Command", ps_script], capture_output=True, text=True)
print("STDOUT:")
print(result.stdout)
print("STDERR:")
print(result.stderr)
