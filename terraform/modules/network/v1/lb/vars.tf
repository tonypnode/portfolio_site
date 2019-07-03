variable "vpc_id" {
  description = "ID of the VPC"
}

variable "lb_name" {
  description = "Name of the LB"
}

variable "logs_bucket" {
  description = ".bucket"
}

variable "subnet1_id" {
  description = "The ID of the subnet"
}

variable "lb_target_grp_name" {
  description = "Target Group Name"
}

variable "target_port" {
  description = "Target Port"
  default = 80
}

variable "subnet_ids" {
  description = "List of IDs for the subnets"
}
