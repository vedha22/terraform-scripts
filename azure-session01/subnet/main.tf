resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.subnet_rg
  virtual_network_name = var.subnet_vnet
  address_prefixes     = var.subnet_address_prefixes
}
