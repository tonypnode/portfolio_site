# AZ data from https://console.aws.amazon.com/vpc/home?region=us-east-1#subnets:sort=SubnetId

resource "aws_subnet" "subnet_az" {
  #Outputs from VPC
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.cidr_block_az}"

  # Check Region for AZ Names
  availability_zone = "${var.az_name}"

}
