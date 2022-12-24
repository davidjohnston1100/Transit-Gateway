resource "aws_ec2_transit_gateway" "this" {
  
  description = var.description
  tags = var.tags
  auto_accept_shared_attachments = var.auto_accept_shared_attachments
  dns_support = var.dns_support
  default_route_table_association = var.default_route_table_association
  default_route_table_propagation = var.default_route_table_propagation  
}

