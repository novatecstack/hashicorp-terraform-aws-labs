resource "aws_instance" "ec2InstanceResource" {
  ami                    = var.ec2_ami_id
  instance_type          = var.instance_type
  key_name               = "LinuxEC2KeyPair"
  vpc_security_group_ids = [aws_security_group.allow-ssh-sg.id]

  provisioner "file" {
    source      = "sample-files/File-01.txt"
    destination = "/tmp/File-01.txt"

    connection {
      type     = "ssh"
      host     = self.public_ip
      user     = "ec2-user"
      private_key = file("${path.module}/keypairs/LinuxEC2KeyPair.pem")
      
    }

  }

  tags = {
    "Name" = "Nova-WebServer"
  }
}
