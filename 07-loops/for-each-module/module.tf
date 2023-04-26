variable "components" {
  default = {
    frontend = {
      Name = "frontend",
      instance_type= "t3.micro"
    }
    cart = {
      Name = "cart",
      instance_type= "t3.large"
    }
    catalogue = {
      Name = "catalogue",
      instance_type= "t3.small"
    }
  }
}

module "ec2" {
  source = "./module"
  for_each = var.components
  instance_type=each.value.instance_type
  name= each.value.Name
}