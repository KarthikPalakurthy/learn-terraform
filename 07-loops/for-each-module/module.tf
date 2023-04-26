variable "components" {
  default = {
    frontend = {
      name = "frontend",
      instance_type= "t3.micro"
    }
    cart = {
      name = "cart",
      instance_type= "t3.large"
    }
    catalogue = {
      name = "catalogue",
      instance_type= "t3.small"
    }
  }
}

module "ec2" {
  source = "./module"
  for_each = var.components
  instance_type=each.value.instance_type
  name= each.value.name
}