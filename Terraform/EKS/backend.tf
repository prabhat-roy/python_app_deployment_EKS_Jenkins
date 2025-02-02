
terraform {
  backend "s3" {
    bucket = "terraform-state-bucket-873330726955"
    key = "terraform.tfstate"
    dynamodb_table = "terraform_state_lock"
    region = "ap-south-2"
  }
}