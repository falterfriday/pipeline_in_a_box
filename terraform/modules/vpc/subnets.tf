resource "aws_subnet" "dmz_1" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${cidrsubnet(var.cidr_block, 8, 0)}"
  availability_zone = "${var.az1}"
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.vpc_name}-dmz-${element(split("-", var.az1), 3)}"
  }
}

resource "aws_subnet" "dmz_2" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${cidrsubnet(var.cidr_block, 8, 1)}"
  availability_zone = "${var.az2}"
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.vpc_name}-dmz-${element(split("-", var.az2), 3)}"
  }
}

resource "aws_subnet" "front_1" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${cidrsubnet(var.cidr_block, 8, 2)}"
  availability_zone = "${var.az1}"
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.vpc_name}-front-${element(split("-", var.az1), 3)}"
  }
}

resource "aws_subnet" "front_2" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${cidrsubnet(var.cidr_block, 8, 3)}"
  availability_zone = "${var.az2}"
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.vpc_name}-front-${element(split("-", var.az2), 3)}"
  }
}

resource "aws_subnet" "mid_1" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${cidrsubnet(var.cidr_block, 8, 4)}"
  availability_zone = "${var.az1}"
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.vpc_name}-mid-${element(split("-", var.az1), 3)}"
  }
}

resource "aws_subnet" "mid_2" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${cidrsubnet(var.cidr_block, 8, 5)}"
  availability_zone = "${var.az2}"
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.vpc_name}-mid-${element(split("-", var.az2), 3)}"
  }
}

resource "aws_subnet" "back_1" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${cidrsubnet(var.cidr_block, 8, 6)}"
  availability_zone = "${var.az1}"
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.vpc_name}-back-${element(split("-", var.az1), 3)}"
  }
}

resource "aws_subnet" "back_2" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${cidrsubnet(var.cidr_block, 8, 7)}"
  availability_zone = "${var.az2}"
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.vpc_name}-back-${element(split("-", var.az2), 3)}"
  }
}