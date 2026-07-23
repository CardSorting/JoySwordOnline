import subprocess

ips = ["2001:4860:4860::8888", "2001:4860:4860::8844"]
ps_lines = []
for ip in ips:
    # Repeat deletion to clear multiple occurrences
    for _ in range(4):
        ps_lines.append(f"Start-Process netsh -ArgumentList 'interface ipv6 delete dnsservers name=\"Ethernet\" address={ip}' -Verb RunAs -Wait")

ps_lines.append("Start-Process ipconfig -ArgumentList '/flushdns' -Verb RunAs -Wait")
ps_script = "\n".join(ps_lines)

subprocess.run(["powershell", "-Command", ps_script], capture_output=True)

print("--- Updated IPv6 DNS Settings ---")
res = subprocess.run("netsh interface ipv6 show dnsservers", shell=True, capture_output=True, text=True)
print(res.stdout)
