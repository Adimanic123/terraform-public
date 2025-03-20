resource "aws_eip" "lb" {
  domain   = "vpc"
}

output "public_address" {
  value = aws_eip.lb.public_ip
}
