resource "aws_route_table" "publicRT" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.mygw.id
  }

  tags = {
    Name = "public-route-table"
  }
}




resource "aws_route_table" "PrivateTable" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "private-route-table"
  }
}


