# Create Resource Group
module "resource_group" {
    for_each = var.rg_objects
    source = "./resource_group"
    resourcegroup_name = each.key
    resourcegroup_location = each.value.location
    resourcegroup_environment = each.value.environemnt
}


# Create a virtual network

# Create a subnet

# Create a public IP address

# Create a network security group

# Create a virtual network interface card

# Create a storage account for diagnostics

# Create a virtual machine
