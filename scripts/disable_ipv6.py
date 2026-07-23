import base64
import subprocess

ps_code = """
Disable-NetAdapterBinding -Name "Ethernet" -ComponentID ms_tcpip6 -ErrorAction SilentlyContinue
ipconfig /flushdns
"""

encoded = base64.b64encode(ps_code.encode('utf-16le')).decode('ascii')
cmd = f"powershell -Command \"Start-Process powershell -ArgumentList '-EncodedCommand {encoded}' -Verb RunAs -Wait\""

subprocess.run(cmd, shell=True, capture_output=True)

print("--- Testing GitHub Connection ---")
res = subprocess.run("powershell -Command Test-NetConnection github.com -Port 443", shell=True, capture_output=True, text=True)
print(res.stdout)
