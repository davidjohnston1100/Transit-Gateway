 variable "description" {
  description = "Description for TGW"
  type        = string
  default     = "TGW for US East 1"
 }
 
 variable "auto_accept_shared_attachments" {
  description = "Bool value for auto accept shared attachments"
  type        = bool
  default     = true
 }
 
 variable "dns_support" {
  description = "Bool value for dns support"
  type        = bool
  default     = true
 }
