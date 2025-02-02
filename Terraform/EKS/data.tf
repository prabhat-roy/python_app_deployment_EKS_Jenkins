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

output "vpc" {
  value = data.aws_vpc.eks_vpc.id
}
output "public-subnet" {
    value = data.aws_subnets.public.ids
}
output "private-subnet" {
    value = data.aws_subnets.private.ids
}