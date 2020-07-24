data "terraform_remote_state" "collab" {
  backend = "s3"

  config = {
    bucket = "pipeline_in_a_box_tfstate"
    key = "collaboration/vpc/terraform.tfstate"
    region = "us-east-1"
    profile = "pipeline_in_a_box"
  }
}