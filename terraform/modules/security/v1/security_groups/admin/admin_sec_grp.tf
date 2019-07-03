resource "aws_security_group" "admin_secgrp" {

  name = "Admin_Secgrp"
  vpc_id = "${var.vpc_id}"

  ingress {
    from_port = "${var.admin_port}"
    protocol = "${var.admin_proto}"
    to_port = "${var.admin_port}"
    cidr_blocks = ["${var.admin_cidr_in}"]
  }

}