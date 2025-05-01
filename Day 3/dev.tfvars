vpc-cider="10.0.0.0/16"
instance-type = "t2.micro"

subnets_list = [
{ 
    name = "public-subnet-1"
    cidr_block= "10.0.1.0/24"
    availability_zone= "us-east-1a"
    type = "public"
},
{ 
    name = "public-subnet-2"
    cidr_block= "10.0.3.0/24"
    availability_zone= "us-east-1b"
    type = "public"

},
{ 
    name = "Private-subnet-1"
    cidr_block= "10.0.2.0/24"
    availability_zone= "us-east-1a"
    type = "private"

},
{ 
    name = "Private-subnet-2"
    cidr_block= "10.0.4.0/24"
    availability_zone= "us-east-1b"
    type = "private"

}
]

