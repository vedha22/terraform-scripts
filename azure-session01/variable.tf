variable "client_secret" {
    description = "Client SPN secret"
    type = string
    default = ""
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

variable "vm_objects"{
  description = "VM to be created"
  type = map
  default = {
    VM-DEV-01 = {
      rg_name= "RG01"
    }
  }
}
