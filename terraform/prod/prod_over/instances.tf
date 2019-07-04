module "web_front1" {
  source = "../../modules/ec2/v1/webbox"


  vpc_elb_ip = "${data.terraform_remote_state.prod_under.lb.lb_internal_ip}"
  keyname = "${var.key_name}"
  vpc_id = "${data.terraform_remote_state.prod_under.tonyp_info_vpc.vpc_id}"
}