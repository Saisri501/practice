terraform {
  backend "azurerm" {
    resource_group_name = "SaisriResourceGroup"
    storage_account_name = "SaisriStorageAccount"
    container_name = "SaisriContainer"
    key            = "dev.terraform.tfstate"
  }
}
module "RG" {
  source = "./modules/RG"
  rgname = var.rgname
  location = var.location
}
