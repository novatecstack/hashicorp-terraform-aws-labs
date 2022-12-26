variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type = string
}

variable "instance_type" {
  description = "EC2 Instnace Size"
  type = string
}

variable "instance_keypair" {
  description = "EC2 Instance Key Pair"
  type = string
}

variable "ec2_ami_id" {
  description = "EC2 Instance Image ID"
  type = string
}
