terraform {
  backend "s3" {
    bucket = "pipeline_in_a_box_tfstate"
    key = "collaboration/efs/terraform.tfstate"
    region = "us-east-1"
    profile = "pipeline_in_a_box"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "pipeline_in_a_box_tfstate"
  version = "~> 2.70.0"
}

module "jenkins_efs" {
    source = "../../modules/efs"

    vpc_id               = "${data.terraform_remote_state.collab.outputs.vpc_id}"
    subnet_1a_id         = "${data.terraform_remote_state.collab.outputs.subnet_back_1_id}"
    subnet_1b_id         = "${data.terraform_remote_state.collab.outputs.subnet_back_2_id}"    
}

resource "aws_efs_access_point" "jenkins" {
  file_system_id = "${module.jenkins_efs.efs_id}"

  posix_user {
    gid = 1000
    uid = 1000
  }

  root_directory {
    path = "/jenkins_home"

    creation_info {
      owner_uid = 1000
      owner_gid = 1000
      permissions = 755
    }
  }

  tags = {
    Name = "jenkins_home"
  }
}