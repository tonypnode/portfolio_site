resource "aws_lb" "lb" {

  name = "${var.lb_name}"

  load_balancer_type = "application"
  security_groups = ["${aws_security_group.lb_secgrp.id}"]

  subnets = ["${split(",", var.subnet_ids)}"]

 access_logs {
    bucket  = "${var.logs_bucket}"
    prefix  = "lb"
    enabled = true
  }

  tags {
    "Name" = "${var.lb_name}"
  }

}

resource "aws_lb_target_group" "target_group" {
  name = "${var.lb_target_grp_name}"

  port = "${var.target_port}"
  protocol = "HTTP"

  vpc_id = "${var.vpc_id}"

}