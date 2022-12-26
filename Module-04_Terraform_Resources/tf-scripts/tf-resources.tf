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
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region = "us-east-1"
}

# Resource Block
resource "aws_instance" "web_server" {
  ami = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "Nova-WebServer"
  }
}
