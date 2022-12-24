variable "default_route_table_association" {
  description = ""
  type        = string
  default     = "enable"
}

variable "default_route_table_propagation" {
  description = ""
  type        = string
  default     = "enable"
}

variable "description" {
  description = "Description of TGW"
  type        = string
  #default     = "example-vpc"
}

variable "auto_accept_shared_attachments" {
  description = ""
  type        = string
  default     = "enable"
}

variable "dns_support" {
  description = ""
  type        = string
  default     = "enable"
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}


VPC Peer Attachment Variables
###########################################################################################################


variable "create_peer_attachment" {
  description = ""
  type        = bool
  default     = false
}

variable "peer_region" {
  description = ""
  type        = string


variable "peer_transit_gateway_id" {
  description = ""
  type        = string


variable "transit_gateway_id" {
  description = ""
  type        = string
  

VPC Variables
###########################################################################################################

variable "subnet_ids" {
  description = "Private subnet ids for VPC TGW attachment"
  type        = list(string)
  default = null
}

variable "transit_gateway_id" {
  description = ""
  type        = string
  default = null
}

variable "vpc_id" {
  description = ""
  type        = string
  default = null
}
