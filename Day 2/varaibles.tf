variable "vpc-cider" {
  type = string
  description = "The cidr block of VPC."
}

variable "instance-type" {
    type = string
    description = "type of ec2 instance"
  
}


variable "subnets_list" {
    type = list(object({
      name = string
      cidr_block=string
      availability_zone=string
      type = string
    }))
    description = "these are 4 subnets"
  
}

