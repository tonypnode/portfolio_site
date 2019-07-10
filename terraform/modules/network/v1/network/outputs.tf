output "subnet_id" {
  value = "${aws_subnet.subnet_az.id}"
}

output "subnet_cidr" {
  value = "${aws_subnet.subnet_az.cidr_block}"
}
