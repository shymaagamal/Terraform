

resource "aws_subnet" "subnets"{
  vpc_id = aws_vpc.myvpc.id
  for_each = { for subnet in var.subnets_list : subnet.name => subnet }
  cidr_block = each.value.cidr_block
  availability_zone = each.value.availability_zone
  map_public_ip_on_launch = each.value.type == "public" ? true : false
  tags = {
    name = each.value.name
  }

}
