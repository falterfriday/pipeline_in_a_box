output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "cidr_block" {
  value = "${module.vpc.cidr_block}"
}

output "rtb_public_id" {
  value = "${module.vpc.rtb_public_id}"
}

output "rtb_private_id" {
  value = "${module.vpc.rtb_private_id}"
}

output "subnet_dmz_1_id" {
  value = "${module.vpc.subnet_dmz_1_id}"
}

output "subnet_dmz_2_id" {
  value = "${module.vpc.subnet_dmz_2_id}"
}

output "subnet_front_1_id" {
  value = "${module.vpc.subnet_front_1_id}"
}

output "subnet_front_2_id" {
  value = "${module.vpc.subnet_front_2_id}"
}

output "subnet_mid_1_id" {
  value = "${module.vpc.subnet_mid_1_id}"
}

output "subnet_mid_2_id" {
  value = "${module.vpc.subnet_mid_2_id}"
}

output "subnet_back_1_id" {
  value = "${module.vpc.subnet_back_1_id}"
}

output "subnet_back_2_id" {
  value = "${module.vpc.subnet_back_2_id}"
}