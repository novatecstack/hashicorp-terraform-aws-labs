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

# Security for allowing web-traffic (Port: 80)
resource "aws_security_group" "allow-https-sg" {
  name        = "ALLOW-HTTPS-SG"
  description = "Security Group for HTTP Inbound"
  ingress {
    description = "Allow Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow Port 443"
    from_port   = 443
    to_port     = 443
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
    Name = "ALLOW-HTTPS-SG"
  }
}

