sqlcmd -S tcp:127.0.0.1,1433 -U sa -P $env:JOYSWORD_SA_PASSWORD -d Statistics -Q "UPDATE LChannelList SET IP = '52.238.194.187' WHERE IP IN ('159.203.165.171', 'play.onjoysword.top')"
Stop-Process -Name CenterServer, ChannelServer, GlobalServer, LoginServer, GameServer, python -ErrorAction SilentlyContinue
Clear-DnsClientCache
python D:\JoySword\Server\scripts\start-offline.py --headless
