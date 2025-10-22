# Create (or re-use) the RG, then Storage Account
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  kind                     = "StorageV2"
}

output "storage_account_id" {
  value = azurerm_storage_account.sa.id
}
