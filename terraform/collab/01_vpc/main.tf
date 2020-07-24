terraform {
  backend "s3" {
    bucket          = "tfstate-pipeline-in-a-box"
    key             = "tfstate-pipeline-in-a-box/vpc/terraform.tfstate"
    region          = "us-east-1"
    profile         = "pipeline_in_a_box"
    encrypt         = true
    dynamodb_table  = "pipeline_in_a_box_statelock"
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "pipeline_in_a_box"
  version = "~> 2.70.0"
}

module "vpc" {
  source      = "../../modules/vpc"
  vpc_name    = "pipeline_in_a_box"
  cidr_block  = "10.0.0.0/16"
}