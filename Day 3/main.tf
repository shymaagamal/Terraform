module "mynetwork" {
  source = "./network"
  vpc-cider =  var.vpc-cider
  subnets_list =  var.subnets_list
  
}


