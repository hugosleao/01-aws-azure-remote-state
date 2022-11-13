resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-terraform"
  }
}

resource "aws_bucket" "subnet" {
  vpc_id     = aws_vpc.vpc.vpc_id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet-terraform"
  }
}

resource "aws_internet_gateway" "internet_gw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "internet-gw-tf"
  }
}

resource "aws_route_table" "aws_route_table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gw.id
  }

  tags = {
    Name = "route-table-tf"
  }
}