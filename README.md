# Terraform
<!-- Lab 1  -->
Networking
1- create vpc
2- create internet gateway
3- create natgateway (optional because it is not free)
3- create public route table
4- create private route table
5- create public route
6- attach public route table to subnets
Compute
7- create security group which allow ssh from 0.0.0.0/0
8- create security group that allow ssh and port 3000 from vpc cidr only
7- create ec2(bastion) in public subnet with security group from 7
8- create ec2(application) private subnet with security group from 8
 
note: you should use s3 bucket as backend and enable state lock



<!-- Lab 2  -->

1-create two workspaces dev and prod
2-create two variable definition files(.tfvars) for the two environments
3-create subnets with single resource and for_each
4-use data section for ami_id
5-apply your code to create two environments one in us-east-1 and eu-central-1
6-run local-exec provisioner to print the public_ip of bastion ec2
7-create rds (mysql) in private subnet 
8-create elastic cache(redis) in private subnet
9-create lambda function (python print hello world) with terraform



<!-- Lab 3  -->


1-separate network resources into network module

2-upload infrastructure code on github project

3-verify your email in ses service

4-create lambda function to send email

5-create s3 event notification to detect changes in state file and send the email
 
optional: use eks module from terraform registry to create eks cluster with private node groups and use terraform to create two namespaces dev and prod 


