provider "aws" {
  region  = "us-east-1"
  version = "~> 3.38.0"
  
  

}

terraform {
    backend "s3" {
    bucket = "testingdevops"
    encrypt = true
    key = "state.tfstate"
    
    #profile = "~/.aws/credentials" # you have to give the profile name here. not the variable("${var.AWS_PROFILE}")
  }
}
