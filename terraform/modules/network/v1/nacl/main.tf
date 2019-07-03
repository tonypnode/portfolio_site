resource "aws_network_acl" "nacl" {
  vpc_id = "${var.vpc_id}"


  #TODO: Clean up Egress
  egress {
    action = "allow"
    from_port = 0
    protocol = "tcp"
    rule_no = 1
    to_port = 65535
    cidr_block = "0.0.0.0/0"

  }

  #TODO: Clean up Ingress
  ingress {
    action = "allow"
    from_port = 80
    protocol = "tcp"
    rule_no = 1
    to_port = 80
    cidr_block = "0.0.0.0/0"

  }

  ingress {
    action = "allow"
    from_port = 443
    protocol = "tcp"
    rule_no = 2
    to_port = 443
    cidr_block = "0.0.0.0/0"

  }

  ingress {
    action = "allow"
    from_port = 22
    protocol = "tcp"
    rule_no = 3
    to_port = 22
    cidr_block = "0.0.0.0/0"

  }

  tags = {
    "Name" = "${var.nacl_tag_name}"
  }

}