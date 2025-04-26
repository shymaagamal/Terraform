resource "aws_elasticache_subnet_group" "elasticache_subnet_group" {
  name       = "elasticache-private-subnet-group"
  subnet_ids = [aws_subnet.subnets["Private-subnet-1"].id,aws_subnet.subnets["Private-subnet-2"].id]

  tags = {
    Name = "Elasticache Subnet Group"
  }
}

resource "aws_elasticache_cluster" "elasticCache" {
  cluster_id           = "my-redis-cluster"
  engine               = "redis"
  node_type            = "cache.t3.micro"
  num_cache_nodes      = 1
  security_group_ids = [aws_security_group.mySGPrivate.id]
  subnet_group_name   = aws_elasticache_subnet_group.elasticache_subnet_group.name
  tags = {
    Name = "MyRedisCache"
  }
}