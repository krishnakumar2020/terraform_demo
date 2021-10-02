provider "aws" {
  region  = "us-east-1"
  version = "~> 3.38.0"
  
  profile = "${var.AWS_PROFILE}" # lets say profile is my-profile

}

terraform {
    backend "s3" {
    bucket = "testingdevops"
    encrypt = true
    key = "state.tfstate"
    
    profile = "~/.aws/credentials" # you have to give the profile name here. not the variable("${var.AWS_PROFILE}")
  }
}
