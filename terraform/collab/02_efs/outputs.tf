output "efs_sg_id" {
    value = "${module.jenkins_efs.efs_sg_id}"
}

output "efs_id" {
    value = "${module.jenkins_efs.efs_id}"
}

output "efs_mount_1a_id" {
    value = "${module.jenkins_efs.efs_mount_1a_id}"
}

output "efs_mount_1b_id" {
    value = "${module.jenkins_efs.efs_mount_1b_id}"
}

output "efs_access_point_id" {
    value = "${aws_efs_access_point.jenkins.id}"
}

output "efs_access_point_arn" {
    value = "${aws_efs_access_point.jenkins.arn}"
}