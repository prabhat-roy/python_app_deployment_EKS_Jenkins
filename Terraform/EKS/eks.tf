resource "aws_eks_cluster" "cluster1" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks-iam-role.arn
  vpc_config {
    subnet_ids         = data.aws_subnets.private.ids
    security_group_ids = [aws_security_group.eks_cluster_sg.id]
  }
  depends_on = [aws_iam_role.eks-iam-role]
}