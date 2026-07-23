import base64
import subprocess

ps_script = """
$hostsPath = 'C:\\Windows\\System32\\drivers\\etc\\hosts'
$entry = '140.82.113.3 github.com api.github.com codeload.github.com'
$content = Get-Content $hostsPath -Raw
if ($content -notlike '*140.82.113.3 github.com*') {
    Add-Content -Path $hostsPath -Value "`n# Direct GitHub IPv4 Route Fix`n$entry"
}
ipconfig /flushdns
"""

encoded = base64.b64encode(ps_script.encode('utf-16le')).decode('ascii')
cmd = f"powershell -Command \"Start-Process powershell -ArgumentList '-EncodedCommand {encoded}' -Verb RunAs -Wait\""

subprocess.run(cmd, shell=True, capture_output=True)

print("--- Testing git push / connection to github.com ---")
res = subprocess.run("git push", shell=True, capture_output=True, text=True, cwd=r"c:\Users\media\Downloads\JoySwordOffline - Copy")
print(res.stdout)
print(res.stderr)
