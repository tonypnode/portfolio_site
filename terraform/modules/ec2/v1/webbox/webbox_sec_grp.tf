resource "aws_security_group" "webbox_secgrp" {

  name = "TonyPWebBox_Secgrp"
  vpc_id = "${var.vpc_id}"

  ingress {
    from_port = 8001
    protocol = "tcp"
    to_port = 8001
    cidr_blocks = ["${var.vpc_elb_ip}"]
  }

}