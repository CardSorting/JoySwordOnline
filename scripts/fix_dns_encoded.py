import base64
import subprocess

ps_code = """
Set-DnsClientServerAddress -InterfaceAlias 'Ethernet' -ResetServerAddresses
Set-DnsClientServerAddress -InterfaceAlias 'Ethernet' -ServerAddresses ('1.1.1.1', '8.8.8.8')
ipconfig /flushdns
"""

encoded = base64.b64encode(ps_code.encode('utf-16le')).decode('ascii')
cmd = f"powershell -Command \"Start-Process powershell -ArgumentList '-EncodedCommand {encoded}' -Verb RunAs -Wait\""

subprocess.run(cmd, shell=True, capture_output=True)

print("--- Check DNS Settings ---")
res = subprocess.run("powershell -Command Get-DnsClientServerAddress -InterfaceAlias Ethernet", shell=True, capture_output=True, text=True)
print(res.stdout)
