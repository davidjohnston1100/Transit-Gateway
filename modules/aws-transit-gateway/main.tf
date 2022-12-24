resource "aws_ec2_transit_gateway" "this" {
  description = var.description
  auto_accept_shared_attachments = var.auto_accept_shared_attachments
}

