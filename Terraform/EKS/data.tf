data "aws_vpc" "eks_vpc" {
    id = var.vpc_id
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