terraform {
  required_version = ">= 1.9.0, < 2.0.0"

  backend "azurerm" {}

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.79"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.9"
    }
  }
}

provider "azurerm" {
  subscription_id                 = var.subscription_id
  resource_provider_registrations = "none"
  storage_use_azuread             = true
  features {
    key_vault {
      purge_soft_delete_on_destroy = false
    }
    recovery_service {
      vm_backup_stop_protection_and_retain_data_on_destroy = true
    }
  }
}
