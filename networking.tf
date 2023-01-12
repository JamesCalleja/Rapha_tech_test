resource "aws_vpc" "rapha_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_internet_gateway" "rapha_gateway" {
  vpc_id = aws_vpc.rapha_vpc.id
}

resource "aws_eip" "rapha_eip" {
  vpc = true
}

resource "aws_subnet" "rapha_public_subnet_1" {
  vpc_id                  = aws_vpc.rapha_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = false
  availability_zone       = "eu-west-2a"
}

resource "aws_subnet" "rapha_public_subnet_2" {
  vpc_id                  = aws_vpc.rapha_vpc.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = false
  availability_zone       = "eu-west-2b"
}

resource "aws_subnet" "rapha_public_subnet_3" {
  vpc_id                  = aws_vpc.rapha_vpc.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = false
  availability_zone       = "eu-west-2c"
}

resource "aws_route_table" "rapha_public_route_table" {
  vpc_id = aws_vpc.rapha_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.rapha_gateway.id
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.rapha_public_subnet_1.id
  route_table_id = aws_route_table.rapha_public_route_table.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.rapha_public_subnet_2.id
  route_table_id = aws_route_table.rapha_public_route_table.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.rapha_public_subnet_3.id
  route_table_id = aws_route_table.rapha_public_route_table.id
}