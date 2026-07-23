@echo off
echo Resetting IPv6 DNS servers on Ethernet to DHCP...
netsh interface ipv6 set dnsservers name="Ethernet" source=dhcp

echo Setting IPv4 DNS servers on Ethernet to Cloudflare (1.1.1.1) and Google (8.8.8.8)...
netsh interface ipv4 set dnsservers name="Ethernet" static 1.1.1.1 primary
netsh interface ipv4 add dnsservers name="Ethernet" 8.8.8.8 index=2

echo Resetting IPv6 DNS servers on Ethernet 3 to DHCP...
netsh interface ipv6 set dnsservers name="Ethernet 3" source=dhcp
netsh interface ipv4 set dnsservers name="Ethernet 3" static 1.1.1.1 primary
netsh interface ipv4 add dnsservers name="Ethernet 3" 8.8.8.8 index=2

echo Flushing DNS Resolver Cache...
ipconfig /flushdns

echo DNS Repair Complete.
