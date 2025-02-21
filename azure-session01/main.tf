/* # Create Resource Group
  module "resource_group" {
    for_each = var.rg_objects
    source = "./resource_group"
    resourcegroup_name = each.key
    resourcegroup_location = each.value.location
    resourcegroup_environment = each.value.environemnt
}

# Create Network security Groups
module "network_security_group" {
    for_each = var.nsg_objects
    source = "./network_security_group"
    nsg_name = each.key
    nsg_location = each.value.location
    nsg_rg = each.value.rg
}

# Create Network security Group Rules
module "nsg_rule" {
    for_each = var.nsg_rule_objects
    source = "./nsg_rule"
    rule_name                        = each.key
    rule_priority                    = each.value.priority
    rule_direction                   = each.value.direction
    rule_access                      = each.value.access
    rule_protocol                    = each.value.protocol
    rule_source_port_range           = each.value.source_port_range
    rule_destination_port_range      = each.value.destination_port_range
    rule_source_address_prefix       = each.value.source_address_prefix
    rule_destination_address_prefix  = each.value.destination_address_prefix
    rule_resource_group_name         = each.value.resource_group_name
    rule_network_security_group_name = each.value.network_security_group_name
}*/

# Create a virtual network
module "virtual_network" {
    for_each = var.vnet_objects
    source = "./virtual_network"
    vnet_name = each.key
    vnet_location = each.value.location
    vnet_rg = each.value.rg
    vnet_address_space = each.value.address_space
}


# Create a subnet
module "subnet" {
    for_each = var.subnet_objects
    source = "./subnet"
    subnet_name = each.key
    subnet_rg = each.value.rg
    subnet_vnet = each.value.vnet
    subnet_address_prefixes = each.value.address_prefixes
}

# Create a public IP address

# Create a virtual network interface card

# Create a storage account for diagnostics

# Create a virtual machine
