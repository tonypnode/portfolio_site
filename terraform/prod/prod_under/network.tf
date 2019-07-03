module "tonyp_info_vpc" {
  source = "../../modules/vpc/v1/vpc"

  tag_name = "${var.vpc_tag_name}"
  vpc_cidr = "${var.vpc_cidr}"
}

module "inet_gw" {
  source = "../../modules/network/v1/inet_gw"

  vpc_id = "${module.tonyp_info_vpc.vpc_id}"

  inet_gw_name = "${var.inet_gw_name}"
}

module "nacl" {
  source = "../../modules/network/v1/nacl"

  vpc_id = "${module.tonyp_info_vpc.vpc_id}"


  nacl_tag_name = "${var.nacl_name}"
}

module "route_table" {
  source = "../../modules/network/v1/route_table"

  vpc_id = "${module.tonyp_info_vpc.vpc_id}"

  tag_name = "${var.route_table_name}"
  default_route_out_gw_id = "${module.inet_gw.inet_gw_id}"
}

module "subnet1_az1" {
  source = "../../modules/network/v1/network"

  vpc_id = "${module.tonyp_info_vpc.vpc_id}"

  az_name = "${var.az1_name}"
  cidr_block_az = "${cidrsubnet("${var.vpc_cidr}", 4, 1)}"
}

module "subnet1_az2" {
  source = "../../modules/network/v1/network"

  vpc_id = "${module.tonyp_info_vpc.vpc_id}"

  az_name = "${var.az2_name}"
  cidr_block_az = "${cidrsubnet("${var.vpc_cidr}", 4, 2)}"
}

module "lb" {
  source = "../../modules/network/v1/lb"
  vpc_id = "${module.tonyp_info_vpc.vpc_id}"

  subnet1_id = "${module.subnet1_az1.subnet_id}"

  lb_name = "${var.lb_name}"
  logs_bucket = "${var.logs_bucket}"
  lb_target_grp_name = "${var.lb_trg_grp_name}"

  #Add AZ subnets here, NO SPACES, doing split"
  #TODO make it scalable
  subnet_ids = "${module.subnet1_az1.subnet_id},${module.subnet1_az2.subnet_id}"
}