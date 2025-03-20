resource "aws_eip" "lb" {
  domain   = "vpc"
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = "${aws_security_group.allow_tls.id}/32"
  cidr_ipv4         = aws_eip.lb.id
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}
