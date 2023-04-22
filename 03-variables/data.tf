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

variable "demo1" {}