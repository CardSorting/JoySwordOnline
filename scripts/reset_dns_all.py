import subprocess

ps_script = """
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ResetServerAddresses
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses ("1.1.1.1", "8.8.8.8")
ipconfig /flushdns
"""

subprocess.run(["powershell", "-Command", f"Start-Process powershell -ArgumentList '-Command {ps_script}' -Verb RunAs -Wait"], capture_output=True)

print("--- Final DNS Settings ---")
res = subprocess.run("powershell -Command Get-DnsClientServerAddress -InterfaceAlias Ethernet", shell=True, capture_output=True, text=True)
print(res.stdout)
