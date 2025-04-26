resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rsd"
  subnet_ids = [aws_subnet.subnets["Private-subnet-1"].id,aws_subnet.subnets["Private-subnet-2"].id]

  tags = {
    Name = "My DB subnet group"
  }
}


resource "aws_db_instance" "my_rds" {
  identifier             = "my-private-db"
  engine                 = "mysql"           
  instance_class         = "db.t3.micro"      
  allocated_storage      = 20
  db_name                = "mydatabase"
  username               = "admin"
  password               = "yourStrongPssw0rd"
  skip_final_snapshot    = true

  vpc_security_group_ids = [aws_security_group.mySGPrivate.id]
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name
  publicly_accessible    = false # important! NOT publicly accessible
  multi_az               = false # set true for high availability
}
