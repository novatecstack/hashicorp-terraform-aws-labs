# Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.40.0"
    }
  }
}

# Provider Block
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.2.1"
  ami = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
  tags = {
    Name = "bindesh-instance "
  }
}