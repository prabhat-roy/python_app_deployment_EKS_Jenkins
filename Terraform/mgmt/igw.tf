resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.mgmt_vpc.id
  tags = {
    Name = "Management - Internet Gateway"
  }
}