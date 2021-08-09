resource "azurerm_network_security_rule" "nsg_rule" {
  name                        = var.rule_name
  priority                    = var.rule_priority
  direction                   = var.rule_direction
  access                      = var.rule_access
  protocol                    = var.rule_protocol
  source_port_range           = var.rule_source_port_range
  destination_port_range      = var.rule_destination_port_range
  source_address_prefix       = var.rule_source_address_prefix
  destination_address_prefix  = var.rule_destination_address_prefix
  resource_group_name         = var.rule_resource_group_name
  network_security_group_name = var.rule_network_security_group_name
}
