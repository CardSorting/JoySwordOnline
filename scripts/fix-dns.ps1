# Fix Windows DNS Resolution for GitHub & HTTPS Web Access
$interfaces = Get-NetAdapter | Where-Object Status -eq 'Up'
foreach ($if in $interfaces) {
    Write-Host "Configuring IPv4 DNS (1.1.1.1 / 8.8.8.8) on interface: $($if.Name)"
    Set-DnsClientServerAddress -InterfaceIndex $if.ifIndex -ServerAddresses ('1.1.1.1', '8.8.8.8') -ErrorAction SilentlyContinue
}
ipconfig /flushdns
Write-Host "DNS cache flushed and Cloudflare/Google DNS servers configured."
