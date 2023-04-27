variable "component" {
  default   = {
    cart   = {
      name          = "cart"
      instance_type = "t3.micro"
  }
    Catalogue = {
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