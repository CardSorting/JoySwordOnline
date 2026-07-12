variable "subscription_id" {
  type        = string
  description = "Azure subscription hosting JoySword."
}

variable "tenant_id" {
  type        = string
  description = "Microsoft Entra tenant for the subscription."
}

variable "location" {
  type    = string
  default = "centralus"
}

variable "resource_group_name" {
  type    = string
  default = "joysword-prod-rg"
}

variable "artifact_storage_account_name" {
  type = string
  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.artifact_storage_account_name))
    error_message = "Azure storage account names require 3-24 lowercase letters or digits."
  }
}

variable "key_vault_name" {
  type = string
}

variable "alert_email" {
  type = string
}

variable "operator_object_id" {
  description = "Microsoft Entra object ID allowed to create and rotate JoySword secrets."
  type        = string
}

variable "web_app_name" {
  description = "Globally unique Azure App Service name."
  type        = string
}

variable "web_app_service_sku" {
  description = "Linux App Service plan SKU. Basic or higher is required for VNet integration."
  type        = string
  default     = "B1"
}

variable "postgres_server_name" {
  description = "Globally unique Azure Database for PostgreSQL server name."
  type        = string
}

variable "postgres_administrator_login" {
  type    = string
  default = "joyswordpgadmin"
}

variable "postgres_sku_name" {
  type    = string
  default = "B_Standard_B1ms"
}

variable "web_starting_cash" {
  type    = number
  default = 0
}

variable "admin_username" {
  type    = string
  default = "azureedge"
}

variable "admin_ssh_public_key" {
  type        = string
  description = "Recovery SSH key. No public SSH NSG rule is created."
  sensitive   = true
}

variable "public_game_tcp_ports" {
  type    = list(number)
  default = [9200, 9300, 9400, 9201, 9301, 9401]

  validation {
    condition = alltrue([
      for port in var.public_game_tcp_ports :
      port >= 1 && port <= 65535 && !contains([22, 1433, 3389, 5985, 5986], port)
    ])
    error_message = "TCP game ports must be valid and must not expose administrative or database services."
  }
}

variable "public_game_udp_ports" {
  type        = list(number)
  description = "Secondary UDP ports for the public Login, Game, and Channel services."
  default     = [9201, 9301, 9401]

  validation {
    condition     = alltrue([for port in var.public_game_udp_ports : port >= 1 && port <= 65535])
    error_message = "UDP game ports must be between 1 and 65535."
  }
}

variable "enable_accelerated_networking" {
  type        = bool
  description = "Enable only after selecting an Azure VM size that supports Accelerated Networking."
  default     = true
}

variable "vm_size" {
  type        = string
  description = "Azure VM size for the Windows game server."
  default     = "Standard_D2s_v4"
}

variable "vm_zone" {
  type        = string
  description = "Availability zone for the VM and its data disk. Pins compute and storage to the same zone for low-latency disk I/O."
  default     = "1"

  validation {
    condition     = contains(["1", "2", "3"], var.vm_zone)
    error_message = "vm_zone must be one of \"1\", \"2\", or \"3\"."
  }
}

variable "vm_patch_mode" {
  type        = string
  description = "Windows VM patch orchestration. Custom/Packer-baked images must use Manual or AutomaticByOS; AutomaticByPlatform requires a Guest-Patch-compatible image."
  default     = "Manual"

  validation {
    condition     = contains(["Manual", "AutomaticByOS", "AutomaticByPlatform"], var.vm_patch_mode)
    error_message = "vm_patch_mode must be Manual, AutomaticByOS, or AutomaticByPlatform."
  }
}

variable "os_disk_type" {
  type        = string
  description = "Managed-disk SKU for the VM OS disk."
  default     = "Premium_LRS"

  validation {
    condition     = contains(["Standard_LRS", "StandardSSD_LRS", "Premium_LRS", "PremiumV2_LRS"], var.os_disk_type)
    error_message = "os_disk_type must be a valid managed-disk SKU."
  }
}

variable "data_disk_type" {
  type        = string
  description = "Managed-disk SKU for the SQL data disk. Premium SSD is recommended for the database workload."
  default     = "Premium_LRS"

  validation {
    condition     = contains(["Standard_LRS", "StandardSSD_LRS", "Premium_LRS", "PremiumV2_LRS"], var.data_disk_type)
    error_message = "data_disk_type must be a valid managed-disk SKU."
  }
}

variable "data_disk_size_gb" {
  type        = number
  description = "Size of the SQL data disk in GiB."
  default     = 64

  validation {
    condition     = var.data_disk_size_gb >= 32 && var.data_disk_size_gb <= 4096
    error_message = "data_disk_size_gb must be between 32 and 4096."
  }
}

variable "artifact_replication_type" {
  type        = string
  description = "Replication for the artifact storage account. ZRS survives a datacenter/zone failure; LRS is cheaper single-zone."
  default     = "ZRS"

  validation {
    condition     = contains(["LRS", "ZRS", "GRS", "GZRS", "RAGRS", "RAGZRS"], var.artifact_replication_type)
    error_message = "artifact_replication_type must be a valid Azure storage replication type."
  }
}

variable "blob_retention_days" {
  type        = number
  description = "Soft-delete retention window (days) for blobs and containers in the artifact storage account."
  default     = 14

  validation {
    condition     = var.blob_retention_days >= 1 && var.blob_retention_days <= 365
    error_message = "blob_retention_days must be between 1 and 365."
  }
}

variable "operator_ip" {
  description = "Authorized public IP address of the operator for secure administrative RDP access."
  type        = string
}

variable "edge_dns_label" {
  type        = string
  description = "Globally unique DNS label for the public IP of the game-server edge VM."
  default     = "joysword-edge-server"
}

variable "release_version" {
  type        = string
  description = "The release version to deploy."
}

variable "server_source_image_id" {
  type        = string
  description = "The resource ID of the managed Windows image."
}
