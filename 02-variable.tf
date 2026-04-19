# Input variables for Terraform configuration

# Variable for GCP project ID
variable "project_id" {
  description = "GCP project ID."
  type        = string
  default     = ""
}

# Variable for GCP region
variable "region" {
  description = "GCP region used for region"
  type        = string
  default     = ""
}

# Variable for GCP zone
variable "zone" {
  description = "GCP zone used for zone"
  type        = string
  default     = ""
}

# Variable for VPC name
variable "vpc_name" {
  description = "VPC name as it appears in GCP."
  type        = string
  default     = ""
}

# Variable for subnet name
variable "subnet_name" {
  description = "Subnet name as it appears in GCP."
  type        = string
  default     = ""
}

# Variable for subnet CIDR block
variable "subnet_cidr" {
  description = "CIDR block for the subnet."
  type        = string
  default     = ""
}

# Secondary range variables for VPC
variable "secondary_range_names" {
  description = "Name of the secondary range the VPC"
  type        = map(list(string))
  default = {
    main = [
      "",
      ""
    ]
  }
}

# Variable for secondary range CIDR blocks
variable "secondary_range_cidrs" {
  description = "CIDR block of the secondary range the VPC"
  type        = map(list(string))
  default = {
    main = [
      "",
      ""
    ]
  }
}

# Router ASN variable
variable "router_asn" {
  description = "ASN for the Cloud Router"
  type        = number
  default     = 65001
}