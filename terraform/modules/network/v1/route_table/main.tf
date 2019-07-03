resource "aws_route_table" "route_table" {
  vpc_id = "${var.vpc_id}"

  tags = {
      "Name" = "${var.tag_name}"
    }
}

resource "aws_route" "default" {
  route_table_id = "${aws_route_table.route_table.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = "${var.default_route_out_gw_id}"
}