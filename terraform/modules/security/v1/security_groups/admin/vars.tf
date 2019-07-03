variable "vpc_id" {
  description = "VPC ID"
}

variable "admin_cidr_in" {
  description = "CIDRs allowed in for admin"
}

variable "admin_port" {
  description = "port for incoming admin"
}

variable "admin_proto" {
  description = "protocol for incoming admin"
  default = "tcp"
}