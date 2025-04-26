resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc-cider
  tags = {
    Name = "myvpc"
  }
}


