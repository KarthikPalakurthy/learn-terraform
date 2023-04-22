data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

output "example" {
  value = data.aws_ami.example.platform_details
}

data "aws_instance" "Public_IP" {
  instance_id = "i-08aba10bf306bf872"
}

output "Public_IP" {
  value = data.aws_instance.Public_IP.public_ip
}
// For more than 1 outputs, we need multiple blocks. Multiple outputs cannot be generated on the same line of code