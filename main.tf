terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.0.0"
    }
  }
}  

provider "aws" {
  alias  = "local"
  region = "us-east-1"
}

module "tgw" {
  source = "./modules/aws-transit-gateway"

  provider = aws.local
  description = var.description
  
  
  /*tags = {
    Name = "Local TGW"
  }*/
  
  auto_accept_shared_attachments = var.auto_accept_shared_attachments
  dns_support = var.dns_support
}
