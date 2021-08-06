resource "azurerm_resource_group" "tf-resource-group"{
    name  = var.resourcegroup_name
    location = var.resourcegroup_location
    tags = {
          Environment= "${var.resourcegroup_name}-${var.resourcegroup_environment}-${var.resourcegroup_location}"
          Description="Built from Terraform"
    }
}
