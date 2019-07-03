provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "tonypnode.info.tf"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
  }
}