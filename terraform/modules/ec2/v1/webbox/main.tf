resource "aws_instance" "instance" {
  ami = "ami-0c6b1d09930fac512"
  instance_type = "t2.micro"


  associate_public_ip_address = false

  root_block_device {
    delete_on_termination = "true"
    volume_size = "8"
  }

  vpc_security_group_ids = ["${aws_security_group.webbox_secgrp.id}"]

  key_name = "${var.keyname}"

  tags = {
    "Name" = "TonyPNode_Info-${timestamp()}"
  }

}