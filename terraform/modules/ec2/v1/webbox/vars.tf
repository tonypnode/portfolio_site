variable "keyname" {
  description = "Name of the Key-Pair to use for this instance"
}

variable "vpc_id" {
  description = "The ID of the vpc"
}

variable "vpc_elb_ip" {
  description = "Internal IP of the LoadBalancer"
}