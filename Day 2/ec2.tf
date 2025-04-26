resource "aws_instance" "BastionInstance-toRDS" {
  instance_type = var.instance-type
  ami         = data.aws_ami.ubuntu.id
  vpc_security_group_ids = [aws_security_group.mySGPublic.id]
  subnet_id     = aws_subnet.subnets["public-subnet-1"].id
  key_name               = aws_key_pair.my_key.key_name
  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }
}


resource "aws_instance" "BastionInstance-toElasticCache" {
  instance_type = var.instance-type
  ami         = data.aws_ami.ubuntu.id
  vpc_security_group_ids = [aws_security_group.mySGPublic.id]
  subnet_id     = aws_subnet.subnets["public-subnet-2"].id
  key_name               = aws_key_pair.my_key.key_name
  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }
}