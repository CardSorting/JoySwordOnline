# initialize-data-disk.ps1
# Run as Administrator on the Azure Windows Server VM to format and mount the SSD as D: and create directories.

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

# Reassign CD-ROM from D: to Z: if necessary
Get-WmiObject -Class Win32_Volume | Where-Object { $_.DriveLetter -eq 'D:' } | ForEach-Object {
    Write-Host "CD-ROM is using drive letter D:. Reassigning to Z:..."
    $_.DriveLetter = 'Z:'
    $_.Put()
}

# Find raw disks
$rawDisk = Get-Disk | Where-Object PartitionStyle -eq 'Raw'
if (-not $rawDisk) {
    Write-Host "No raw disk found. Checking if D: is already active..."
    $drive = Get-Volume -DriveLetter D -ErrorAction SilentlyContinue
    if ($drive) {
        Write-Host "D: drive is already active. FileSystemLabel: $($drive.FileSystemLabel)"
    } else {
        Write-Error "D: drive is not active, and no raw disk was found to partition."
        exit 1
    }
} else {
    Write-Host "Found raw disk: Number $($rawDisk.Number), Size $($rawDisk.Size / 1GB) GB. Initializing..."
    $rawDisk | Initialize-Disk -PartitionStyle GPT -PassThru | New-Partition -DriveLetter D -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel "Data" -Confirm:$false
    Write-Host "D: drive initialized successfully!"
}

# Create target layout directories
$Dirs = @(
    "D:\JoySword",
    "D:\JoySword\Client",
    "D:\JoySword\Server",
    "D:\JoySword\Database",
    "D:\JoySword\DatabaseBackups",
    "D:\JoySword\Config",
    "D:\JoySword\Tools",
    "D:\JoySword\Logs",
    "D:\JoySword\PacketReplays",
    "D:\JoySword\Evidence",
    "D:\JoySword\Installers",
    "D:\JoySword\Snapshots",
    "D:\JoySword\RuntimeNotes"
)

foreach ($Dir in $Dirs) {
    if (-not (Test-Path $Dir)) {
        New-Item -ItemType Directory -Path $Dir -Force | Out-Null
        Write-Host "Created directory: $Dir"
    } else {
        Write-Host "Directory already exists: $Dir"
    }
}

Write-Host "Target layout directories created successfully."
