# EC2 Instance Resource
resource "aws_instance" "app_server" {
  ami = data.aws_ami.amazon_linux2_image_ds.id
  instance_type = var.instance_type
  key_name = var.instance_keypair
  network_interface {
    network_interface_id = aws_network_interface.app_nic.id
    device_index = 0
  }
  tags = {
    "Name" = "Nova-WebServer"
  }
}
