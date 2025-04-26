resource "aws_instance" "privateInstance" {
  instance_type = "t3.micro"
  ami         = "ami-084568db4383264d4"

  vpc_security_group_ids = [aws_security_group.mySGPrivate.id]
  subnet_id     = aws_subnet.privateSubnet1.id
  key_name               = aws_key_pair.my_key.key_name
}

resource "aws_instance" "privateInstance2" {
  instance_type = "t3.micro"
  ami         = "ami-084568db4383264d4"
    
  vpc_security_group_ids = [aws_security_group.mySGPrivate.id]
  subnet_id     = aws_subnet.privateSubnet2.id
  key_name               = aws_key_pair.my_key.key_name
}
resource "aws_instance" "publicInstance" {
  instance_type = "t3.micro"
  ami           = "ami-084568db4383264d4"
  vpc_security_group_ids = [aws_security_group.mySGPublic.id]
  subnet_id     = aws_subnet.publicsubnet.id
  key_name               = aws_key_pair.my_key.key_name
}
resource "aws_instance" "publicInstance2" {
  instance_type = "t3.micro"
  ami         = "ami-084568db4383264d4"
  vpc_security_group_ids = [aws_security_group.mySGPublic.id]
  subnet_id     = aws_subnet.publicsubnet2.id
  key_name               = aws_key_pair.my_key.key_name
}