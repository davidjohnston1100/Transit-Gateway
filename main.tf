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
  
}
