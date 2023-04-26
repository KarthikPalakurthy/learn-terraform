resource "aws_instance" "web" {
  #We use count to create multiple loops and it can be controlled by using length of a variable.
  ami = data.aws_ami.centos8.id
  instance_type = var.instance_type

  tags = {
    Name = var.name
  }
}

data "aws_ami" "centos8" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

variable "name" {}

output "ec2" {
  value = aws_instance.web
}

variable "instance_type" {
  default = "null"
}
