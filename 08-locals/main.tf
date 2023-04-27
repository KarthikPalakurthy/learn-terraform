variable "component" {
  default   = {
    Instance1   = {
      name          = "cart"
      instance_type = "t3.micro"
  }
    Instance2 = {
      name          = "Catalogue"
      instance_type = "t3.small"
    }
  }
}

locals {
  instance_type = { for k, v in var.component : k => v.instance_type }
  name          = { for k, v in var.component : k => v.name }
}

output "instance" {
  value = local.instance_type
}

output "name" {
  value = local.name
}