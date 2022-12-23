provider "aws" {
  alias  = "local"
  region = "us-east-2"
}

resource "aws_ec2_transit_gateway" "this" {
  description = var.description
  provider = aws.local
  
  /*tags = {
    Name = "Local TGW"
  }*/
  
  auto_accept_shared_attachments = var.auto_accept_shared_attachments
  dns_support = var.dns_support
}

