resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.default.id}"

  tags = {
    Name = "${var.vpc_name}-public-rtb"
  }
}

resource "aws_route_table" "private" {
  vpc_id = "${aws_vpc.default.id}"

  tags = {
    Name = "${var.vpc_name}-private-rtb"
  }
}

resource "aws_main_route_table_association" "private" {
  route_table_id = "${aws_route_table.private.id}"

  vpc_id = "${aws_vpc.default.id}"
}

resource "aws_route_table_association" "dmz_1" {
  subnet_id      = "${aws_subnet.dmz_1.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "dmz_2" {
  subnet_id      = "${aws_subnet.dmz_2.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "front_1" {
  subnet_id      = "${aws_subnet.front_1.id}"
  route_table_id = "${aws_route_table.private.id}"
}

resource "aws_route_table_association" "front_2" {
  subnet_id      = "${aws_subnet.front_2.id}"
  route_table_id = "${aws_route_table.private.id}"
}

resource "aws_route_table_association" "mid_1" {
  subnet_id      = "${aws_subnet.mid_1.id}"
  route_table_id = "${aws_route_table.private.id}"
}

resource "aws_route_table_association" "mid_2" {
  subnet_id      = "${aws_subnet.mid_2.id}"
  route_table_id = "${aws_route_table.private.id}"
}

resource "aws_route_table_association" "back_1" {
  subnet_id      = "${aws_subnet.back_1.id}"
  route_table_id = "${aws_route_table.private.id}"
}

resource "aws_route_table_association" "back_2" {
  subnet_id      = "${aws_subnet.back_2.id}"
  route_table_id = "${aws_route_table.private.id}"
}