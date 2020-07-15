output "vpc_id" {
  value = "${aws_vpc.default.id}"
}

output "cidr_block" {
  value = "${aws_vpc.default.cidr_block}"
}

output "rtb_public_id" {
  value = "${aws_route_table.public.id}"
}

output "rtb_private_id" {
  value = "${aws_route_table.private.id}"
}

output "subnet_dmz_1_id" {
  value = "${aws_subnet.dmz_1.id}"
}

output "subnet_dmz_2_id" {
  value = "${aws_subnet.dmz_2.id}"
}

output "subnet_front_1_id" {
  value = "${aws_subnet.front_1.id}"
}

output "subnet_front_2_id" {
  value = "${aws_subnet.front_2.id}"
}

output "subnet_mid_1_id" {
  value = "${aws_subnet.mid_1.id}"
}

output "subnet_mid_2_id" {
  value = "${aws_subnet.mid_2.id}"
}

output "subnet_back_1_id" {
  value = "${aws_subnet.back_1.id}"
}

output "subnet_back_2_id" {
  value = "${aws_subnet.back_2.id}"
}

output "private_cidr_blocks" {
  value = [
    "${aws_subnet.mid_1.cidr_block}",
    "${aws_subnet.mid_2.cidr_block}",
    "${aws_subnet.back_1.cidr_block}",
    "${aws_subnet.back_2.cidr_block}"
  ]
}