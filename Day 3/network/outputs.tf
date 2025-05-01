output "subnets" {
  value = aws_subnet.subnets
}

output "vpc-id" {
  value = aws_vpc.myvpc.id
}
output "ssh-sg" {
    value = aws_security_group.mySGPublic.id
  
}

output "app-sg" {
    value = aws_security_group.mySGPrivate.id
  
}


