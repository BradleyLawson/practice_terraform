resource "azurerm_resource_group" "terraform_practice" {
  name     = "bradsResourceGroup"
  location = var.location
}