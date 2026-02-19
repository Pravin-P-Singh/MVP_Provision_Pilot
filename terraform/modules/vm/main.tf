
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.company_name}-${var.project_name}"
  location = var.location
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}
