# download-and-extract-workspace.ps1
# Script to run on Azure VM to download the workspace zip, extract, re-layout, and patch paths.

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue' # Disable progress bar to speed up web requests significantly

$StorageAccount = "jsartbe6c7ac407"
$Container = "releases"
$BlobName = "joysword-workspace.zip"
$ZipPath = "D:\JoySword\joysword-workspace.zip"
$ServerDir = "D:\JoySword\Server"
$ClientDir = "D:\JoySword\Client"

# 1. Download from Blob Storage using Managed Identity
Write-Host "Fetching AAD token from Instance Metadata Service (IMDS)..."
$TokenResponse = Invoke-RestMethod -Uri "http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https://storage.azure.com/" -Headers @{Metadata="true"}
$Token = $TokenResponse.access_token

Write-Host "Downloading blob $BlobName from storage account $StorageAccount..."
$Url = "https://$StorageAccount.blob.core.windows.net/$Container/$BlobName"
$Headers = @{
    "Authorization" = "Bearer $Token"
    "x-ms-version" = "2020-08-04"
}
Invoke-WebRequest -Uri $Url -Headers $Headers -OutFile $ZipPath -TimeoutSec 1800
Write-Host "Download complete! Size: $((Get-Item $ZipPath).Length / 1GB) GB"

# 2. Extract the archive using native tar.exe (much faster than Expand-Archive)
Write-Host "Extracting archive to D:\JoySword\Server using tar.exe..."
if (-not (Test-Path $ServerDir)) {
    New-Item -ItemType Directory -Path $ServerDir -Force | Out-Null
}
# tar.exe -xf extracts zip files natively on Windows Server 2019+
& tar.exe -xf $ZipPath -C $ServerDir
if ($LASTEXITCODE -ne 0) {
    Write-Error "tar.exe failed to extract archive"
    exit 1
}
Write-Host "Extraction complete!"

# Reorganize from D:\JoySword\Server\JoySwordOffline to D:\JoySword\Server
$ExtractedFolder = Join-Path $ServerDir "JoySwordOffline"
if (Test-Path $ExtractedFolder) {
    Write-Host "Moving files from $ExtractedFolder to $ServerDir..."
    Get-ChildItem -Path $ExtractedFolder | ForEach-Object {
        $Dest = Join-Path $ServerDir $_.Name
        if (Test-Path $Dest) {
            Remove-Item -Recurse -Force $Dest
        }
        Move-Item -Path $_.FullName -Destination $ServerDir -Force
    }
    Remove-Item -Recurse -Force $ExtractedFolder
}

# 3. Copy client and data folders to D:\JoySword\Client
Write-Host "Replicating client files to target layout D:\JoySword\Client..."
$ClientSource = Join-Path $ServerDir "client"
$DataSource = Join-Path $ServerDir "data"

if (Test-Path $ClientSource) {
    Copy-Item -Path $ClientSource -Destination $ClientDir -Recurse -Force
}
if (Test-Path $DataSource) {
    Copy-Item -Path $DataSource -Destination $ClientDir -Recurse -Force
}

# 4. Search and replace old host paths with stable VM paths
Write-Host "Replacing host paths with stable VM paths in configs..."
$OldPath = "C:\Users\media\Downloads\JoySwordOffline"
$NewPath = "D:\JoySword\Server"
$OldPathSlash = $OldPath.Replace("\", "/")
$NewPathSlash = $NewPath.Replace("\", "/")

# Scope the sweep to config-bearing locations only. Walking the whole 6GB tree
# (game assets, KOM archives) is slow and pointless — host paths only live in
# offline.env, launcher scripts, and server config/text files.
$PatchRoots = @(
    (Join-Path $ServerDir "Elsword\offline"),
    (Join-Path $ServerDir "scripts")
) | Where-Object { Test-Path $_ }

$FilesToPatch = @()
foreach ($root in $PatchRoots) {
    $FilesToPatch += Get-ChildItem -Path $root -Recurse -File `
        -Include *.env, *.ini, *.cfg, *.txt, *.ps1, *.json, *.xml, *.bat -ErrorAction SilentlyContinue
}

foreach ($File in $FilesToPatch) {
    # [IO.File]::ReadAllText works on every PowerShell host (the Azure run-command
    # agent runs a legacy host where Get-Content -Raw is unavailable).
    $Content = [System.IO.File]::ReadAllText($File.FullName)
    if ($Content -and ($Content.Contains($OldPath) -or $Content.Contains($OldPathSlash))) {
        Write-Host "Patching path in: $($File.FullName)"
        $Patched = $Content.Replace($OldPath, $NewPath).Replace($OldPathSlash, $NewPathSlash)
        [System.IO.File]::WriteAllText($File.FullName, $Patched)
    }
}

# 5. Clean up zip file
Write-Host "Cleaning up download archive..."
if (Test-Path $ZipPath) {
    Remove-Item -Force $ZipPath
}

Write-Host "Workspace extraction and path patching completed successfully!"
