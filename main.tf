provider "aws" {
  region  = "us-east-1"
  version = "~> 3.38.0"
  #shared_credentials_file = "~/.aws/credentials"
  

}

terraform {
    backend "s3" {
      bucket = "testingdevops"
      encrypt = true
      key = "state/terraform.tfstate"
      region  = "us-east-1"
      shared_credentials_file = "~/.aws/credentials"
      #profile = "~/.aws/credentials" # you have to give the profile name here. not the variable("${var.AWS_PROFILE}")
  }
}
