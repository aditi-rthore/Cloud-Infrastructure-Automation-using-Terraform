resource "aws_subnet" "public" {

  vpc_id = aws_vpc.main.id

  cidr_block = var.subnet

  map_public_ip_on_launch = true

  availability_zone = "eu-north-1a"

  tags = {
    Name = "PublicSubnet"
  }
}