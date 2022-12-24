resource "aws_ec2_transit_gateway" "this" {
  
  description = var.description
  tags = var.tags
  auto_accept_shared_attachments = var.auto_accept_shared_attachments
  dns_support = var.dns_support
  default_route_table_association = var.default_route_table_association
  default_route_table_propagation = var.default_route_table_propagation  
}

resource "aws_ec2_transit_gateway_vpc_attachment" "this" {
  subnet_ids         = var.subnet_ids
  transit_gateway_id = var.transit_gateway_id
  vpc_id             = var.vpc_id
}
