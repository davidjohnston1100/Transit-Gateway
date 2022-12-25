output "tgw_id" {
  description = "EC2 Transit Gateway identifier"
  value       = aws_ec2_transit_gateway.this.id
}

output "tgw_default_route_table_id" {
  description = "EC2 Transit Gateway default route table identifier"
  value       = aws_ec2_transit_gateway.this.association_default_route_table_id
}

output "tgw_attachment_id" {
  description = "EC2 Transit Gateway attachment identifier"
  value       = aws_ec2_transit_gateway_vpc_attachment.this.id
}
