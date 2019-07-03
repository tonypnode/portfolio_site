resource "aws_security_group" "lb_secgrp" {

  name = "Admin_Secgrp"
  vpc_id = "${var.vpc_id}"

  ingress {
    from_port = "80"
    protocol = "tcp"
    to_port = "80"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = "443"
    protocol = "tcp"
    to_port = "443"
    cidr_blocks = ["0.0.0.0/0"]
  }

}