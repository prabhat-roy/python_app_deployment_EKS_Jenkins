output "jenkins" {
  value = join("", ["http://", aws_instance.jenkins.public_ip, ":", "8080"])
}
output "SonarQube" {
  value = join("", ["http://", aws_instance.jenkins.public_ip, ":", "9000"])
}