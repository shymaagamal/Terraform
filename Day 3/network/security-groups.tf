resource "aws_security_group" "mySGPublic" {
  name        = "PublicSG"
  description = "allow ssh from 0.0.0.0/0"
  vpc_id      = aws_vpc.myvpc.id

  tags = {
    Name = "allow_ssh"
  }
}


resource "aws_vpc_security_group_ingress_rule" "allow_ssh_ipv4-public" {
  security_group_id = aws_security_group.mySGPublic.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}



resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4-public" {
  security_group_id = aws_security_group.mySGPublic.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}








# Private Security Group




resource "aws_security_group" "mySGPrivate" {
  name        = "privateSG"
  description = "allow ssh and from vpc cidr only"
  vpc_id      = aws_vpc.myvpc.id

  tags = {
    Name = "allow_ssh"
  }
}


resource "aws_vpc_security_group_ingress_rule" "private_ssh" {
  security_group_id = aws_security_group.mySGPrivate.id
  cidr_ipv4         = aws_vpc.myvpc.cidr_block
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "private_port_3000" {
  security_group_id = aws_security_group.mySGPrivate.id
  cidr_ipv4         = aws_vpc.myvpc.cidr_block
  from_port         = 3000
  ip_protocol       = "tcp"
  to_port           = 3000
}

resource "aws_vpc_security_group_egress_rule" "private_egress_all" {
  security_group_id = aws_security_group.mySGPrivate.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}




