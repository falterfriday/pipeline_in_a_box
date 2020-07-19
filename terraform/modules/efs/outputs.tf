output "efs_sg_id" {
    value = "${aws_security_group.efs_sg.id}"
}

output "efs_id" {
    value = "${aws_efs_file_system.efs_fs.id}"
}

output "efs_mount_1a_id" {
    value = "${aws_efs_mount_target.efs_1a_mount.id}"
}

output "efs_mount_1b_id" {
    value = "${aws_efs_mount_target.efs_1b_mount.id}"
}