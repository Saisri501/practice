terraform {
    backend "azurerm" {
        resource_group_name ="resourcegroup1"
        storage_account_name ="storage5011"
        container_name="container"
        key="dev.terraform.tfstate"
    }
}        
resource "azurerm_resource_group" "main" {
    name        = var.resource_group
    location    = var.location 
}
