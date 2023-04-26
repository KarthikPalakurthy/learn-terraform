resource "aws_instance" "web" {
  #We use count to create multiple loops and it can be controlled by using length of a variable.
  count=length(var.components)
  ami = data.aws_ami.centos8.id
  instance_type = "t3.micro"

  tags = {
    name = var.components[count.index]
  }
}

data "aws_ami" "centos8" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

variable "components" {
  default = ["frontend", "cart", "catalogue"]
}