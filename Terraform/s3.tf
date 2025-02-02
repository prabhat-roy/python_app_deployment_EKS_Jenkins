data "aws_caller_identity" "current" {}
output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

resource "aws_s3_bucket" "bucket" {
  bucket = "terraform-state-bucket-${data.aws_caller_identity.current.account_id}"
}