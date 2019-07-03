provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "tonypnode.info.tf"
    key    = "prod_over/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "prod_under" {
  backend = "s3"

  config {
    bucket = "tonypnode.info.tf"
    key    = "prod_under/terraform.tfstate"
    region = "us-east-1"
  }
}