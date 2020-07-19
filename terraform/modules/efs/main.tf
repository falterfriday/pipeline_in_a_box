resource "aws_efs_file_system" "efs_fs" {

  performance_mode = "${var.performance_mode}"

  throughput_mode = "${var.throughput_mode}"

  tags = {
    Name = "${data.aws_vpc.vpc.tags.Name}-efs"
  }

  lifecycle_policy {
      transition_to_ia = "${var.transition_to_ia}"
  }
}