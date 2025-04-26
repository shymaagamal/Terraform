resource "aws_route_table_association" "aPub" {
  subnet_id      = aws_subnet.publicsubnet.id
  route_table_id = aws_route_table.publicRT.id
}
resource "aws_route_table_association" "bPub" {
  subnet_id      = aws_subnet.publicsubnet2.id
  route_table_id = aws_route_table.publicRT.id
}
resource "aws_route_table_association" "cPriv" {
  subnet_id      = aws_subnet.privateSubnet1.id
  route_table_id = aws_route_table.PrivateTable.id
}
resource "aws_route_table_association" "dPriv" {
  subnet_id      = aws_subnet.privateSubnet2.id
  route_table_id = aws_route_table.PrivateTable.id
}


