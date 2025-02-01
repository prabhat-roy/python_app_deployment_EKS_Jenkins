resource "aws_vpc" "app_vpc" {
  cidr_block = var.aws_vpc_cidr
  tags = {
    Name = "Application VPC"
  }
}