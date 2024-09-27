resource "azurerm_resource_group" "baseRG" {
  name     = var.projectName
  location = "East US"
}

resource "azurerm_management_lock" "resource-group-level" {
  name       = "resource-group-level"
  scope      = azurerm_resource_group.example.id
  lock_level = "ReadOnly"
  notes      = "This Resource Group is Read-Only"
}