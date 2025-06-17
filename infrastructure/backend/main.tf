terraform {
  required_version = ">= 1.4.0"
  backend "s3" {
    bucket         = "systemengine-tf-state-dev"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks-dev"
    encrypt        = true
  }
}
provider "aws" {
  region = "us-east-1"
}
