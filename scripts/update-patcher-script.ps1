$Content = @'
# patch-configs.ps1
# stand-alone path patcher for JoySword workspace on VM.

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$ServerDir = "D:\JoySword\Server"
$OldPath = "C:\Users\media\Downloads\JoySwordOffline"
$NewPath = "D:\JoySword\Server"

Write-Host "Scanning D:\JoySword\Server for configs to patch..."
$FilesToPatch = Get-ChildItem -Path $ServerDir -Recurse -File -Include *.env, *.ini, *.cfg, *.txt, *.ps1, *.json, *.xml, *.bat, *.py -ErrorAction SilentlyContinue | Where-Object { $_.Name -ne "patch-configs.ps1" }

$Count = 0
foreach ($File in $FilesToPatch) {
    try {
        $Content = [System.IO.File]::ReadAllText($File.FullName)
        
        $OldPathBackslash = $OldPath
        $OldPathForwardslash = $OldPath.Replace("\", "/")
        
        $Matched = $false
        if ($Content -match [regex]::Escape($OldPathBackslash) -or $Content -match [regex]::Escape($OldPathForwardslash)) {
            Write-Host "Patching path in: $($File.FullName)"
            
            # Perform case-insensitive replacement
            $Patched = $Content -replace [regex]::Escape($OldPathBackslash), $NewPath
            $Patched = $Patched -replace [regex]::Escape($OldPathForwardslash), $NewPath.Replace("\", "/")
            
            [System.IO.File]::WriteAllText($File.FullName, $Patched)
            $Count++
        }
    } catch {
        # Silently ignore read/write errors for locked or system files
    }
}

Write-Host "Successfully patched $Count config files."

'@
Set-Content -Path D:\JoySword\Server\scripts\patch-configs.ps1 -Value $Content -Force
