output "lb_target_grp_arn" {
  value = "${aws_lb_target_group.target_group.arn}"
}

output "lb_internal_ip" {
  value = "${aws_lb.lb.internal}"
}