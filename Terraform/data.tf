data "aws_ami" "ami" {

  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu*"]

  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_caller_identity" "current" {} # data.aws_caller_identity.current.account_id

locals {
  account_id = data.aws_caller_identity.current.account_id
  ami        = data.aws_ami.ami.image_id
}
output "account_id" {
  description = "Selected AWS Account ID"
  value       = local.account_id
}
