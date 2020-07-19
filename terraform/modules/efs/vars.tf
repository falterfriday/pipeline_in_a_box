variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "performance_mode" {
  default = "generalPurpose"
}

variable "throughput_mode" {
  default = "bursting"
}

variable "transition_to_ia" {
  default = "AFTER_30_DAYS"
}

variable "subnet_1a_id" {}

variable "subnet_1b_id" {}