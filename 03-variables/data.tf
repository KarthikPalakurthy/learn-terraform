# Default variable type

variable "sample1" {
  default= 10
}

output"sample1"{
  value = var.sample1
}

# Only string values are double quoted. We dont use single quotes in terraform.

# List variables

variable "sample2" {
  default = [
  100,
    "abc",
    "xyz",
    250
  ]
}

#Output for multiple values for list variable is quoted in [X] where X is line number and starts from 0

output "sample2" {
  value = var.sample2[2]

}

# Map variable type

variable "sample3" {
  default={
    string= "Hello"
    number= 150
    boolean= true
  }
}

output "sample3" {
  value = var.sample3["string"]
}
# As default, terraform pulls the data from terraform.tfvars If we need to pull from other file (demo.tfvars), we need to add the file name to the terraform apply -auto-approve -var-file=demo.tfvars
variable "demo1" {}
output "demo1" {
  value = var.demo1
}