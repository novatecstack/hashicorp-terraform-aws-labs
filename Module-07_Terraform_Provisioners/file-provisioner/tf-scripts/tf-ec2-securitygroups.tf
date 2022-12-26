# Create Security Group - SSH Traffic
resource "aws_security_group" "allow-ssh-sg" {
  name        = "ALLOW-SSH-SG"
  description = "Security Group for SSH Inbound"
  ingress {
    description = "Allow Port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow everything outbound"    
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ALLOW-SSH-SG"
  }
}
