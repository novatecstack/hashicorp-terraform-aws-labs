resource "aws_subnet" "app_subnet" {
  vpc_id            = data.aws_vpc.app_vpc_ds.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "tf-subnet"
  }
}

resource "aws_network_interface" "app_nic" {
  subnet_id   = aws_subnet.app_subnet.id
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "tf-prim-nic"
  }
}