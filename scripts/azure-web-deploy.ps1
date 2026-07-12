# JoySword single-origin Azure web deployer.
# Builds the Vite SPA, bundles it with the account API, installs production
# dependencies, and ZIP-deploys the complete site to one Azure App Service.

$ErrorActionPreference = "Stop"
$ScriptRoot = if ($PSScriptRoot) { $PSScriptRoot } else { Split-Path -Parent $MyInvocation.MyCommand.Definition }
$RepoRoot = Split-Path -Parent $ScriptRoot
$TfVarsPath = Join-Path $RepoRoot "infra\azure\terraform.tfvars"
$ResourceGroup = "joysword-prod-rg"
$AppName = "joysword-web-be6c7ac407"

if (Test-Path $TfVarsPath) {
    $Content = Get-Content $TfVarsPath -Raw
    if ($Content -match 'resource_group_name\s*=\s*"([^"]+)"') { $ResourceGroup = $Matches[1] }
    if ($Content -match 'web_app_name\s*=\s*"([^"]+)"') { $AppName = $Matches[1] }
}

$AzureUrl = "https://$AppName.azurewebsites.net"
$SiteUrl = if ($env:NEXT_PUBLIC_SITE_URL) { $env:NEXT_PUBLIC_SITE_URL.TrimEnd('/') } else { $AzureUrl }
$AllowedOrigins = if ($SiteUrl -ne $AzureUrl) { "$SiteUrl,$AzureUrl" } else { $SiteUrl }
$WebDir = Join-Path $RepoRoot "web"
$ApiDir = Join-Path $WebDir "api"
$ReleaseRoot = Join-Path $RepoRoot ".release-tmp"
$PackageRoot = Join-Path $ReleaseRoot "azure-web"
$ZipPath = Join-Path $ReleaseRoot "joysword-web.zip"

Write-Host "Building JoySword for $SiteUrl" -ForegroundColor Cyan
$env:NEXT_PUBLIC_SITE_URL = $SiteUrl
$env:VITE_SITE_URL = $SiteUrl
$env:VITE_API_BASE_URL = ""
Push-Location $WebDir
try {
    if (-not (Test-Path "node_modules")) { & npm.cmd ci }
    & npm.cmd run build
    if ($LASTEXITCODE -ne 0) { throw "Vite build failed with exit code $LASTEXITCODE" }
} finally {
    Pop-Location
}

$ResolvedReleaseRoot = [IO.Path]::GetFullPath($ReleaseRoot)
$ResolvedPackageRoot = [IO.Path]::GetFullPath($PackageRoot)
if (-not $ResolvedPackageRoot.StartsWith($ResolvedReleaseRoot + [IO.Path]::DirectorySeparatorChar)) {
    throw "Refusing to recreate package outside .release-tmp: $ResolvedPackageRoot"
}
if (Test-Path $PackageRoot) { Remove-Item -LiteralPath $PackageRoot -Recurse -Force }
if (Test-Path $ZipPath) { Remove-Item -LiteralPath $ZipPath -Force }
New-Item -ItemType Directory -Path $PackageRoot -Force | Out-Null

Write-Host "Packaging API and SPA..." -ForegroundColor Cyan
Get-ChildItem -LiteralPath $ApiDir -Force |
    Where-Object { $_.Name -notin @('node_modules', 'public', '.env', '.env.local') } |
    ForEach-Object { Copy-Item -LiteralPath $_.FullName -Destination $PackageRoot -Recurse -Force }
Copy-Item -LiteralPath (Join-Path $WebDir "dist") -Destination (Join-Path $PackageRoot "public") -Recurse -Force

Push-Location $PackageRoot
try {
    & npm.cmd ci --omit=dev
    if ($LASTEXITCODE -ne 0) { throw "Production dependency install failed with exit code $LASTEXITCODE" }
} finally {
    Pop-Location
}

$ZipHelper = Join-Path $RepoRoot "scripts\zip_package.py"
& python $ZipHelper $PackageRoot $ZipPath
if ($LASTEXITCODE -ne 0) { throw "ZIP packaging failed with exit code $LASTEXITCODE" }

Write-Host "Configuring the same-origin Azure site..." -ForegroundColor Cyan
& az webapp config appsettings set --resource-group $ResourceGroup --name $AppName --settings "NEXT_PUBLIC_SITE_URL=$SiteUrl" "WEB_ALLOWED_ORIGINS=$AllowedOrigins" "WEBSITE_RUN_FROM_PACKAGE=0" --output none
if ($LASTEXITCODE -ne 0) { throw "Azure app-setting update failed with exit code $LASTEXITCODE" }

Write-Host "Deploying $ZipPath to $AppName..." -ForegroundColor Cyan
& az webapp deploy --resource-group $ResourceGroup --name $AppName --src-path $ZipPath --type zip --clean true --restart true --track-status false
if ($LASTEXITCODE -ne 0) { throw "Azure deployment failed with exit code $LASTEXITCODE" }

& az webapp show --resource-group $ResourceGroup --name $AppName --query '{url:defaultHostName,state:state}' --output table
Write-Host "Azure portal deployment completed: $SiteUrl" -ForegroundColor Green
