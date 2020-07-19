resource "aws_efs_mount_target" "efs_1a_mount" {

    file_system_id = "${aws_efs_file_system.efs_fs.id}"
    subnet_id = "${var.subnet_1a_id}"
    security_groups = ["${aws_security_group.efs_sg.id}"]
}

resource "aws_efs_mount_target" "efs_1b_mount" {

    file_system_id = "${aws_efs_file_system.efs_fs.id}"
    subnet_id = "${var.subnet_1b_id}"
    security_groups = ["${aws_security_group.efs_sg.id}"]
}