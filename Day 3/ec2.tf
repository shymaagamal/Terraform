resource "aws_instance" "BastionInstance" {
  instance_type = var.instance-type
  ami         = data.aws_ami.ubuntu.id
  vpc_security_group_ids = [module.mynetwork.ssh-sg]
  subnet_id     = module.mynetwork.subnets["public-subnet-1"].id
  key_name               = aws_key_pair.my_key.key_name
  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }
}


resource "aws_instance" "PrivateInstance" {
  instance_type = var.instance-type
  ami         = data.aws_ami.ubuntu.id
  vpc_security_group_ids = [module.mynetwork.ssh-sg]
  subnet_id     = module.mynetwork.subnets["Private-subnet-1"].id
  key_name               = aws_key_pair.my_key.key_name

}


