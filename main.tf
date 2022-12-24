terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.0.0"
    }
  }
}  

provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.21.0"

  name = var.vpc_name
  cidr = var.vpc_cidr
  azs             = var.vpc_azs
  private_subnets = var.vpc_private_subnets
  tags = var.vpc_tags
}
  
module "tgw" {
  source = "./modules/aws-transit-gateway"
  
  description = "AWS-Transit-Gateway for US-East-1"
  auto_accept_shared_attachments = "enable"
  dns_support = "enable"
  
  tags = {
    Name = "US-East-1 AWS-Transit-Gateway"
  }
  
  default_route_table_association = "enable"
  default_route_table_propagation = "enable"
  
  subnet_ids         = var.vpc_private_subnets
  transit_gateway_id = module.transit_gateway_id.id
  vpc_id             = module.vpc.vpc_id
}
