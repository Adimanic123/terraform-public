resource "aws_eip" "lb" {
  domain   = "vpc"
}

output "public_address" {
  value = "http://${aws_eip.lb.public_ip}:8080
}
