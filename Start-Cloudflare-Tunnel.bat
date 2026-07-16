@echo off
title JoySword Cloudflare Tunnel
echo Starting JoySword Cloudflare Tunnel...
"C:\Program Files (x86)\cloudflared\cloudflared.exe" --config C:\Users\media\.cloudflared\config.yml tunnel run
pause
