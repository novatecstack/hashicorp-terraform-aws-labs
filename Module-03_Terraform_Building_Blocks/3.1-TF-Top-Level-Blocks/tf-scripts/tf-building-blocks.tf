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

# Variable Block
variable "sample_variable" {
  type = string
  default = "defaultValue"
  description = "Some variable description here"
  sensitive = false
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

# Output Block
output "web_server_public_ip" {
  value = aws_instance.web_server.public_ip
  description = "Public IP of the EC2 Instance"
}

# Locals Block
locals {
  service_name = "forum"
  owner        = "Community Team"
}

# Data Sources Block
data "aws_ami" "webserver_image_id" {
  most_recent = true

  owners = ["self"]
  tags = {
    Name   = "app-server"
    Tested = "true"
  }
}

# Modules Block
module "sample_module" {
  source = "source_of_the_module"
}