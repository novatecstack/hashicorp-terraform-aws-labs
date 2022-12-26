terraform {  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.47.0"
    }
    time = {
      source = "hashicorp/time"
      version = "0.9.1"
    }
  }
  backend "s3" {
    bucket = "novatfbackendbucket"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "nova-remotestate"
  }
}

# Provider Block
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}
