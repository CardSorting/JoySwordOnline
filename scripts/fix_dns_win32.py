import subprocess
import sys

def run_cmd(cmd: str) -> str:
    res = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    return res.stdout.strip() + "\n" + res.stderr.strip()

print("--- Current DNS Settings ---")
print(run_cmd("netsh interface ip show dns"))

print("\n--- Resetting Ethernet DNS to DHCP & Setting Cloudflare 1.1.1.1 ---")
# Run elevated via PowerShell
ps_cmd = """
Start-Process netsh -ArgumentList 'interface ip set dns name="Ethernet" static 1.1.1.1' -Verb RunAs -Wait
Start-Process netsh -ArgumentList 'interface ip add dns name="Ethernet" 8.8.8.8 index=2' -Verb RunAs -Wait
Start-Process ipconfig -ArgumentList '/flushdns' -Verb RunAs -Wait
"""
subprocess.run(["powershell", "-Command", ps_cmd], capture_output=True)

print("\n--- New DNS Settings ---")
print(run_cmd("netsh interface ip show dns"))
