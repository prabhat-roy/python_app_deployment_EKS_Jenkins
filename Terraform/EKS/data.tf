data "aws_vpc" "eks_vpc" {
    filter {
      name = "tag:Name"
      values = ["Application VPC"]

    }
}

data "aws_subnets" "public" {
    filter {
      name = "tag:Name"
      values = ["Public*"]
    }
}

data "aws_subnets" "private" {
    filter {
      name = "tag:Name"
      values = ["Private*"]
    }
}
