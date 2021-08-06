# Create Resource Group
module "resource_group" {
    for_each = var.rg_objects
    source = "./resource_group"
    resourcegroup_name = each.key
    resourcegroup_location = each.value.location
    resourcegroup_environment = each.value.environemnt
}
