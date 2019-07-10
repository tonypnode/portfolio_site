variable "keyname" {
  description = "Name of the Key-Pair to use for this instance"
}

variable "vpc_id" {
  description = "The ID of the vpc"
}

variable "subnet_id" {
  description = "The Subnet ID for this instance"
}
variable "az_subnet_cidr" {
  description = "Internal IP of the LoadBalancer"
}

