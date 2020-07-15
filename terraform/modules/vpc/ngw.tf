resource "aws_eip" "nat_gateway" {
    vpc = true

    tags = {
        Name = "${var.vpc_name}-ngw-1a-eip"
    }
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = "${aws_eip.nat_gateway.id}"
  subnet_id     = "${aws_subnet.dmz_1.id}"

  tags = {
    Name = "${var.vpc_name}-ngw-1a"
  }
}

resource "aws_route" "nat_gateway" {
  route_table_id = "${aws_route_table.private.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = "${aws_nat_gateway.nat_gateway.id}"
}