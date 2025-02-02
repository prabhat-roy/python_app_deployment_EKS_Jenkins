
terraform {
  backend "s3" {
    bucket = "terraform-state-bucket-873330726955"
    key = "terraform.tfstate"
    region = "ap-south-2"
  }
}