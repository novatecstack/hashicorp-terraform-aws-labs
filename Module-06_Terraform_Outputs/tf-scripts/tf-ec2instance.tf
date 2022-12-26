# EC2 Instance Resource
resource "aws_instance" "ec2InstanceResource" {
  ami = var.ec2_ami_id
  instance_type = var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [ aws_security_group.allow-ssh-sg.id, aws_security_group.allow-https-sg.id ]
  tags = {
    "Name" = "Nova-WebServer"
  }
}
