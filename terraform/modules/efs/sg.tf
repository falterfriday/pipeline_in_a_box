resource "aws_security_group" "efs_sg" {
  
  name        = "${data.aws_vpc.vpc.tags.Name}-efs-sg"
  description = "${data.aws_vpc.vpc.tags.Name}-efs-sg"

  vpc_id      = "${var.vpc_id}"

  tags = {
      Name = "${data.aws_vpc.vpc.tags.Name}-efs-sg"
  }
}

resource "aws_security_group_rule" "efs_outbound_all" {
  type              = "egress"
  protocol          = "all"
  from_port         = 0
  to_port           = 65535
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.efs_sg.id}"
}