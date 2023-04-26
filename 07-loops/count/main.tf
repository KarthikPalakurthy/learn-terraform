resource "aws_instance" "web" {
  count=length(var.components)
  ami = data.aws_ami.centos8.id
  instance_type = "t3.micro"

  tags = {
    name = "test-machine"
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