resource "aws_ecr_repository" "time-images" {
  name                 = "SimpleTimeService"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = false
  }
}