resource "aws_subnet" "mgmt_subnet" {
  vpc_id                  = aws_vpc.mgmt_vpc.id
  cidr_block              = var.mgmt_subnet_cidrs
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true
  tags = {
    Name = "Management Subnet"
  }
}
resource "aws_route_table_association" "mgmt_subnet_association" {
  subnet_id      = aws_subnet.mgmt_subnet.id
  route_table_id = aws_route_table.mgmt_rt.id
}

