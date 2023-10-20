resource "azurerm_virtual_network" "terraform_practice" {
  name                = "bradsVnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.terraform_practice.name
}

resource "azurerm_subnet" "terraform_practice" {
  name                 = "bradsSubnet"
  resource_group_name  = azurerm_resource_group.terraform_practice.name
  virtual_network_name = azurerm_virtual_network.terraform_practice.name
  address_prefixes     = ["10.0.2.0/24"]
}