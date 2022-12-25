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

resource "aws_ec2_transit_gateway_peering_attachment" "this" {
  count = var.create_peer_attachment ? 1 : 0

  peer_region             = var.peer_region
  peer_transit_gateway_id = var.peer_transit_gateway_id
  transit_gateway_id      = var.transit_gateway_id
}

resource "aws_ec2_transit_gateway_route" "route_1" {
 
  destination_cidr_block         = var.destination_cidr_block_1
  transit_gateway_attachment_id  = var.transit_gateway_attachment_id
  transit_gateway_route_table_id = var.transit_gateway_route_table_id
}

resource "aws_ec2_transit_gateway_route" "route_2" {
 
  destination_cidr_block         = var.destination_cidr_block_2
  transit_gateway_attachment_id  = var.transit_gateway_attachment_id
  transit_gateway_route_table_id = var.transit_gateway_route_table_id
}

resource "aws_ec2_transit_gateway_route" "route_3" {
  count = var.create_peer_attachment ? 0 : 1
 
  destination_cidr_block         = var.destination_cidr_block_3
  transit_gateway_attachment_id  = var.transit_gateway_attachment_id
  transit_gateway_route_table_id = var.transit_gateway_route_table_id
}

resource "aws_ec2_transit_gateway_route" "route_4" {
  count = var.create_peer_attachment ? 0 : 1
 
  destination_cidr_block         = var.destination_cidr_block_4
  transit_gateway_attachment_id  = var.transit_gateway_attachment_id
  transit_gateway_route_table_id = var.transit_gateway_route_table_id
}
