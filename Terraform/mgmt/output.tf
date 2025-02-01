output "mgmt-jenkins-url" {
  value = join("", ["http://", aws_instance.mgmt.public_ip, ":", "8080"])
}