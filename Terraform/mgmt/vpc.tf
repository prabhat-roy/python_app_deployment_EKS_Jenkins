resource "aws_vpc" "mgmt_vpc" {
  cidr_block = var.mgmt_vpc_cidr
  tags = {
    Name = "Management VPC"
  }
}