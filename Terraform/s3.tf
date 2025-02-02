resource "aws_s3_bucket" "bucket" {
  bucket = "terraform-state-bucket-${data.aws_caller_identity.current.account_id}"
}