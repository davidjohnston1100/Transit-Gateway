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
  azs  = var.vpc_azs
  cidr = var.vpc_cidr
  private_subnets = var.vpc_private_subnets
  tags = var.vpc_tags
}
  
module "tgw" {
  source = "./modules/aws-transit-gateway"
  
  description = var.description 
  tags = var.tgw_name
  
  subnet_ids         = module.vpc.private_subnets
  transit_gateway_id = module.tgw.tgw_id
  vpc_id             = module.vpc.vpc_id
    
  peer_region             = var.peer_region
  peer_transit_gateway_id = var.peer_transit_gateway_id
    
  destination_cidr_block_1 = "10.6.2.0/24"
  transit_gateway_attachment_id  = module.tgw.tgw_attachment_id
  transit_gateway_route_table_id = module.tgw.tgw_default_route_table_id
    
  destination_cidr_block_2 = "10.6.3.0/24"
  destination_cidr_block_3 = "10.2.0.0/16"
  destination_cidr_block_4 = "10.5.0.0/16"
}
