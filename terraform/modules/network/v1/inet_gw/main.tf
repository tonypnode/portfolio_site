resource "aws_internet_gateway" "inet_gw" {
  vpc_id = "${var.vpc_id}"

  tags = {
    "Name" = "${var.inet_gw_name}"
  }


}


