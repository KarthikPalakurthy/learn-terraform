resource "aws_instance" "web" {
  #We use count to create multiple loops and it can be controlled by using length of a variable.
  for_each = var.components
  ami = data.aws_ami.centos8.id
  instance_type = var.components["instance_type"]

  tags = {
    name = var.components["name"]
  }
}

data "aws_ami" "centos8" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

variable "components" {
  default = {
    frontend = {
      name = "frontend"
      instance_type= "t3.micro"
    }
    cart = {
      name = "cart"
      instance_type= "t3.large"
    }
    catalogue = {
      name = "catalogue"
      instance_type= "t3.small"
    }
  }
}