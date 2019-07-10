output "vpc_id" {
  value = "${module.tonyp_info_vpc.vpc_id}"
}

output "az1_subnet1_id" {
  value = "${module.subnet1_az1.subnet_id}"
}
output "az1_subnet1_cidr" {
  value = "${module.subnet1_az1.subnet_cidr}"
}

output "az2_subnet1_cidr" {
  value = "${module.subnet1_az2.subnet_cidr}"
}

output "az2_subnet1_id" {
  value = "${module.subnet1_az2.subnet_id}"
}

