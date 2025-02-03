
resource "aws_eks_node_group" "node_group" {

  cluster_name    = aws_eks_cluster.cluster1.name
  node_group_name = "EKS-worker_node_group"
  node_role_arn   = aws_iam_role.workernodes.arn
  subnet_ids           = data.aws_subnets.private.ids
  instance_types       = [var.worker_node_instance_type]
  capacity_type        = var.capacity
  force_update_version = true
  scaling_config {
    desired_size = 1
    max_size     = 5
    min_size     = 1
  }
  update_config {
    max_unavailable = 1
  }
  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly,
  ]
}
