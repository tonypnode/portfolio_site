module "web_front1" {
  source = "../../modules/ec2/v1/webbox"


  keyname = "${var.key_name}"
  vpc_id = "${data.terraform_remote_state.prod_under.vpc_id}"

  subnet_id = "${data.terraform_remote_state.prod_under.az1_subnet1_id}"
  az_subnet_cidr = "${data.terraform_remote_state.prod_under.az1_subnet1_cidr}"
}