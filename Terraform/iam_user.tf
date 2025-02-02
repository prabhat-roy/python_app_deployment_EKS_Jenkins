resource "aws_iam_user" "user" {
  name = "terraform-user"
}
resource "aws_iam_access_key" "access_key" {
  user = aws_iam_user.user.name
}
output "access_key_id" {
  value     = aws_iam_access_key.access_key.id
  sensitive = true
}
output "secret_access_key" {
  value     = aws_iam_access_key.access_key.secret
  sensitive = true
}
locals {
  key_csv = "access_key,secret_access_key\n${aws_iam_access_key.access_key.id},${aws_iam_access_key.access_key.secret}"
}
resource "local_file" "keys" {
  content  = local.key_csv
  filename = "keys.csv"
}
resource "aws_iam_group" "terrform_group" {
  name = "terraform-group"
}
resource "aws_iam_group_membership" "membership" {
  name  = aws_iam_user.user.name
  users = [aws_iam_user.user.name]
  group = aws_iam_group.terrform_group.name
}
data "aws_iam_policy" "terraform-policy" {
  arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
resource "aws_iam_group_policy_attachment" "attachment" {
  policy_arn = data.aws_iam_policy.terraform-policy.arn
  group      = aws_iam_group.terrform_group.name
}
