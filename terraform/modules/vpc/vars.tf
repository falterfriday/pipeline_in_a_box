variable "vpc_name" {
  description = "The name of the VPC"
}

variable "cidr_block" {
  description = "The VPC CIDR Block"
}

variable "az1" {
  description = "Availability Zone 1"
  default = "us-east-1a"
}

variable "az2" {
  description = "Availability Zone 2"
  default = "us-east-1b"
}