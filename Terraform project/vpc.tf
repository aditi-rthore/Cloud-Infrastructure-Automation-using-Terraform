resource "aws_vpc" "main" {
  cidr_block= var.vpc
  enable_dns_hostnames=true
  tags = {
    Name = "terraform-vpc"
  }
}