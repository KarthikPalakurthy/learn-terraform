module "ec2" {
  source = "./ec2"
}

module "sg" {
  source = "./sg"
  security_group_id= module.sg.security_group_id
}

terraform {
  backend "s3" {
    bucket = "terraform-devpractice"
    key = "05-modules/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}