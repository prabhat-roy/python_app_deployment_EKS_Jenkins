data "aws_vpc" "eks_vpc" {
    filter {
      name = "tag:Name"
      values = ["Application VPC"]

    }
}

data "aws_subnets" "public" {
    filter {
      name = "Public*"
      values = [data.aws_vpc.eks_vpc.id]
    }
}

data "aws_subnets" "private" {
    filter {
      name = "Private*"
      values = [data.aws_vpc.eks_vpc.id]
    }
}