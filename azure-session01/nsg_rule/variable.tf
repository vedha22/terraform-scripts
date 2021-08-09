variable "rule_name"{
  type = string
}

variable "rule_priority"{
  type = number
}

variable "rule_direction"{
  type = string
}

variable "rule_access"{
  type = string
}

variable "rule_protocol"{
  type = string
}

variable "rule_source_port_range"{
  type = string
}

variable "rule_destination_port_range"{
  type = string
}

variable "rule_source_address_prefix"{
  type = string
}

variable "rule_destination_address_prefix"{
  type = string
}

variable "rule_resource_group_name"{
  type = string
}

variable "rule_network_security_group_name"{
  type = string
}
