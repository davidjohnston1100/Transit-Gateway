output "tgw_id" {
  description = "EC2 Transit Gateway identifier"
  value       = aws_ec2_transit_gateway.this.id
}

output "tgw_attachment_id" {
  description = "EC2 Transit Gateway attachment identifier"
  value       = aws_ec2_transit_gateway_vpc_attachment.this.id
}
