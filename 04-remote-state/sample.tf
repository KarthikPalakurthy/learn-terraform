provider "aws" {
  region= "us-east-1"
}

data "aws_ami" "centos8" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "web" {
  ami = data.aws_ami.centos8.id
  instance_type = "t3.micro"

  tags = {
    name = "test-centos8"
  }
}


terraform {
  backend "s3" {
    bucket = "terraform-devpractice"
    key = "04-remote-state/terraform.tfstate"
    region = "us-east-1"
  }
}