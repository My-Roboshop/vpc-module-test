module "vpc" {
#   source = "../terraform-aws-vpc"
source = "git::https://github.com/My-Roboshop/terraform-aws-vpc.git?ref=main"
#   vpc_cidr = "10.0.0.0/16"
#   project_name = "roboshop"
#   environment = "dev"


# VPC
vpc_cidr = var.vpc_cidr
project_name = var.project_name
environment = var.environment
vpc_tags = var.vpc_tags

# Public subnets
public_subnet_cidrs = var.public_subnet_cidrs

# Private subnets
private_subnet_cidrs = var.private_subnet_cidrs

# Database subnets
database_subnet_cidrs = var.database_subnet_cidr

is_peering_required = false

}