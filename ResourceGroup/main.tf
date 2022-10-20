resource "azurerm_resource_group" "test" {
  name     = "${var.base_name}RG"
  location = var.location
}