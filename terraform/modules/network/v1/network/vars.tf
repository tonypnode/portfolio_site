variable "vpc_id" {
  description = "VPC ID from VPC Output"
}

variable "cidr_block_az" {
  description = "Subnet CIDR should be subset of VPC CIDR"
}

variable "az_name" {
  description = "AZ Name from Region"
}