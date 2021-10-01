provider "aws" {
  region  = "us-east-1"
  version = "~> 3.38.0"
}


terraform {
  backend "s3" {
    bucket = "testingdevops"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}