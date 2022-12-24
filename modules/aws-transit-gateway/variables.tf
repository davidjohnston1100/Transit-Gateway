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
