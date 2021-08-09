variable "secrets"{
  description = "Azure connection details"
  type = map
  default = {
    subscription_id = "5ada1a5c-833e-483f-8681-371dd18e38dd",
    client_id     = "819e5436-04ea-427b-8c0e-8a5aab8c6e7d",
    client_secret = "dm623sNtnto4QKLki3y-aHoXf8AryOocU-",
    tenant_id     = "76a2ae5a-9f00-4f6b-95ed-5d33d77c4d61"
  }
}

variable "rg_objects" {
  description = "Resource groups to be created"
  type = map
  default = {
    RG01 = {
      location = "eastus", environemnt = "Dev"
    },
    RG02 = {
      location = "westus", environemnt = "QA"
    }
  }
}

variable "nsg_objects" {
  description = "Network security groups to be created"
  type = map
  default = {
    nsg01 = {
      location = "eastus", rg = "RG01"
    },
    nsg02 = {
      location = "westus", rg = "RG02"
    }
  }
}

variable "nsg_rule_objects" {
  description = "Network security group rules to be created"
  type = map
  default = {
    testrule01 = {
      priority                    = 100,
      direction                   = "Outbound",
      access                      = "Allow",
      protocol                    = "Tcp",
      source_port_range           = "*",
      destination_port_range      = "*",
      source_address_prefix       = "*",
      destination_address_prefix  = "*",
      resource_group_name         = "RG01",
      network_security_group_name = "nsg01"
    },
    testrule02 = {
      priority                    = 100,
      direction                   = "Outbound",
      access                      = "Allow",
      protocol                    = "Tcp",
      source_port_range           = "*",
      destination_port_range      = "*",
      source_address_prefix       = "*",
      destination_address_prefix  = "*",
      resource_group_name         = "RG02",
      network_security_group_name = "nsg02"
    }
  }
}

variable "vnet_objects" {
  description = "Create virtual network"
  type = map
  default = {
    vnet01 = {
      location = "eastus", rg = "RG01", address_space=["10.0.0.0/16"]
    },
    vnet02 = {
      location = "westus", rg = "RG02", address_space=["10.0.0.0/16"]
    }
  }
}

variable "subnet_objects" {
  description = "Create subnet"
  type = map
  default = {
    subnet01 = {
      location = "eastus", rg = "RG01", vnet="vnet01", address_prefixes=["10.0.1.0/24"]
    },
    subnet02 = {
      location = "westus", rg = "RG02", vnet="vnet02", address_prefixes=["10.0.1.0/24"]
    }
  }
}
