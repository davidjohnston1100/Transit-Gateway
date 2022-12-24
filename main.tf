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
}
