# This Packer template builds the managed Windows image used by the Azure VM
# game server (joysword-server). The entire JoySword workspace is cloned onto
# this VM and all five server processes plus SQL Server run there.
#
# Build:
#   packer init image.pkr.hcl
#   packer validate -var subscription_id=<sub> -var image_name=joysword-windows-2022-<date> image.pkr.hcl
#   packer build    -var subscription_id=<sub> -var image_name=joysword-windows-2022-<date> image.pkr.hcl

packer {
  required_plugins {
    azure = {
      source  = "github.com/hashicorp/azure"
      version = "~> 2.3"
    }
  }
}

variable "subscription_id" {
  type = string
}

variable "location" {
  type    = string
  default = "centralus"
}

variable "resource_group_name" {
  type    = string
  default = "joysword-prod-rg"
}

variable "image_name" {
  type = string
}

variable "vm_size" {
  type        = string
  description = "Build VM size. Keep aligned with the production VM SKU family."
  default     = "Standard_D2s_v4"
}

variable "allowed_inbound_ip" {
  type        = list(string)
  description = "CIDRs allowed to reach the temporary build VM over WinRM. Defaults to open; set to the build agent's egress IP in CI for a locked-down build."
  default     = []
}

source "azure-arm" "joysword" {
  use_azure_cli_auth                = true
  subscription_id                   = var.subscription_id
  managed_image_name                = var.image_name
  managed_image_resource_group_name = var.resource_group_name
  location                          = var.location
  vm_size                           = var.vm_size
  os_type                           = "Windows"
  image_publisher                   = "MicrosoftWindowsServer"
  image_offer                       = "WindowsServer"
  image_sku                         = "2022-datacenter-g2"
  # Managed-image capture does not accept a TrustedLaunch build VM. The Gen2
  # image remains Trusted Launch capable when the production VM enables vTPM
  # and Secure Boot.
  communicator        = "winrm"
  winrm_use_ssl       = true
  winrm_insecure      = true
  winrm_timeout       = "30m"
  winrm_username      = "packer"
  allowed_inbound_ip_addresses = var.allowed_inbound_ip

  azure_tags = {
    application = "joysword"
    managed_by  = "packer"
    role        = "game-server-image"
  }
}

build {
  name    = "joysword-windows"
  sources = ["source.azure-arm.joysword"]

  # Stage 1: base OS, runtime toolchain, firewall, OS tuning.
  provisioner "powershell" {
    script            = "../../scripts/azure_image_bootstrap.ps1"
    elevated_user     = "SYSTEM"
    elevated_password = ""
  }

  provisioner "windows-restart" {
    restart_timeout = "15m"
  }

  # Stage 2: SQL Server Express (Mixed Mode, TCP 1433, no baked secret).
  provisioner "powershell" {
    script            = "../../scripts/azure_image_sql.ps1"
    elevated_user     = "SYSTEM"
    elevated_password = ""
  }

  provisioner "windows-restart" {
    restart_timeout = "15m"
  }

  # Stage 3: Sysprep generalize so the captured image boots cleanly as new VMs.
  provisioner "powershell" {
    inline = [
      "while ((Get-Service RdAgent).Status -ne 'Running') { Start-Sleep -Seconds 5 }",
      "while ((Get-Service WindowsAzureGuestAgent).Status -ne 'Running') { Start-Sleep -Seconds 5 }",
      "& $env:SystemRoot\\System32\\Sysprep\\Sysprep.exe /oobe /generalize /quiet /quit",
      "while ($true) { $state = Get-ItemProperty 'HKLM:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Setup\\State'; if ($state.ImageState -eq 'IMAGE_STATE_GENERALIZE_RESEAL_TO_OOBE') { break }; Start-Sleep -Seconds 10 }",
    ]
  }
}
