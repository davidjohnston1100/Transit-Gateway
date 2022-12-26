# Input variable definitions

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "example-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_private_subnets" {
  description = "Private subnets for VPC"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_tags" {
  description = "Tags to apply to resources created by VPC module"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}

variable "vpc_azs" {
  description = "Availability zones for VPC"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

#TGW resources
###############################################################################################

variable "description" {
  description = "Description of TGW"
  type        = string
  default     = "AWS-Transit-Gateway for US-East-1"
}

variable "peer_region" {
  description = ""
  type        = string
  default     = "us-east-2
}

variable "peer_transit_gateway_id" {
  description = ""
  type        = string
  default     = "tgw-057fdca02cbce8ba8"
}

variable "create_peer_attachment" {
  description = ""
  type        = bool
  default     = true
}
