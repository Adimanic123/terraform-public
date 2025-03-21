resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = var.sg_terraform
  cidr_ipv4         = var.vpn1
  from_port         = var.tls_port
  ip_protocol       = "tcp"
  to_port           = var.tls_port
}
