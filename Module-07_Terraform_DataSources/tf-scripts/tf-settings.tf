# Terraform Block
terraform {
  required_version = "1.3.6"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.46.0"
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default"
  region  = var.aws_region
}
