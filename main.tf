terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

module "ec2_example" {
  source = "./modules"

  name          = "nginx_test"
  instance_type = "t3.nano"
  keyName       = "example-test"
  keyPath       = var.keyPath
}
