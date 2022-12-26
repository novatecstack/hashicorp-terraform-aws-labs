resource "aws_security_group" "allow_https_sg" {
  name        = "AllowHTTPSSG"
  description = "Allow HTTPS inbound traffic"

  ingress {
    description      = "Allow HTTPS Rule"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Allow-HTTPS-SG"
  }
}