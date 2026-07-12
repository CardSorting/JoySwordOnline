# apply-code-overlay.ps1
# Download the JoySword code overlay from blob storage and extract it OVER the
# already-extracted bulk workspace. This guarantees the VM runs current code
# (scripts, SQL fixes, env templates) even when the multi-GB workspace blob is
# older than the latest source — which is exactly how previously-removed traces
# (e.g. the WireGuard tunnel address) used to creep back in.
#
# Build the overlay locally with:  python scripts/build-code-overlay.py
# then upload build/joysword-code-overlay.zip to the releases container as
# 'joysword-code-overlay.zip' (see azure_publish_downloads.py / az storage).

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$StorageAccount = 'jsartbe6c7ac407'
$Container      = 'releases'
$BlobName       = 'joysword-code-overlay.zip'
$ServerDir      = 'D:\JoySword\Server'
$ZipPath        = 'D:\JoySword\joysword-code-overlay.zip'

if (-not (Test-Path $ServerDir)) {
    Write-Error "Server directory $ServerDir does not exist; run the workspace download first."
    exit 1
}

# Fetch an AAD token for storage via the VM managed identity (IMDS).
Write-Host 'Fetching storage token via managed identity...'
$token = (Invoke-RestMethod -Headers @{ Metadata = 'true' } -TimeoutSec 30 `
    -Uri 'http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https://storage.azure.com/').access_token

$uri = "https://$StorageAccount.blob.core.windows.net/$Container/$BlobName"
$headers = @{ Authorization = "Bearer $token"; 'x-ms-version' = '2020-08-04' }

Write-Host "Downloading $BlobName ..."
try {
    Invoke-WebRequest -Uri $uri -Headers $headers -OutFile $ZipPath -TimeoutSec 300 -UseBasicParsing
} catch {
    Write-Warning "Code overlay not found or unreadable ($($_.Exception.Message))."
    Write-Warning "Skipping overlay; the VM will run whatever code the bulk workspace shipped."
    exit 0
}
if (-not (Test-Path $ZipPath) -or (Get-Item $ZipPath).Length -eq 0) {
    Write-Warning 'Downloaded overlay is empty; skipping.'
    exit 0
}
Write-Host "Downloaded $([math]::Round((Get-Item $ZipPath).Length/1KB,1)) KiB."

# Extract over the workspace. The overlay's internal paths are repo-relative
# (scripts/..., database/..., Elsword/offline/...), matching $ServerDir's layout.
Write-Host "Overlaying current code onto $ServerDir ..."
Add-Type -AssemblyName System.IO.Compression.FileSystem
$zip = [System.IO.Compression.ZipFile]::OpenRead($ZipPath)
try {
    $count = 0
    foreach ($entry in $zip.Entries) {
        if ([string]::IsNullOrEmpty($entry.Name)) { continue }  # directory entry
        $dest = Join-Path $ServerDir ($entry.FullName -replace '/', '\')
        $destDir = Split-Path -Parent $dest
        if (-not (Test-Path $destDir)) { New-Item -ItemType Directory -Force -Path $destDir | Out-Null }
        [System.IO.Compression.ZipFileExtensions]::ExtractToFile($entry, $dest, $true)
        $count++
    }
    Write-Host "Overlaid $count file(s)."
} finally {
    $zip.Dispose()
}

Remove-Item -Force $ZipPath -ErrorAction SilentlyContinue
Write-Host 'Code overlay applied successfully.'
