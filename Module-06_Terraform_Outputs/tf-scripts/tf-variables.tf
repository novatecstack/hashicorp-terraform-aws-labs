variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type = string
  default = "us-east-1"
}

variable "instance_type" {
  description = "EC2 Instnace Size"
  type = string
  default = "t2.micro"
}

variable "instance_keypair" {
  description = "EC2 Instance Key Pair"
  type = string
  default = "LinuxKeyPair"
}

variable "ec2_ami_id" {
  description = "EC2 Instance Image ID"
  type = string
  default = "ami-0b0dcb5067f052a63"
}
