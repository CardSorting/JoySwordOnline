import subprocess

ps_cmd = """
Start-Process netsh -ArgumentList 'interface ipv6 delete dnsservers name="Ethernet" address=all' -Verb RunAs -Wait
Start-Process ipconfig -ArgumentList '/flushdns' -Verb RunAs -Wait
"""
subprocess.run(["powershell", "-Command", ps_cmd], capture_output=True)

print("--- Updated IPv6 DNS Settings ---")
res = subprocess.run("netsh interface ipv6 show dnsservers", shell=True, capture_output=True, text=True)
print(res.stdout)
