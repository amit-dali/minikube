output "security_group" {
  value = "${aws_security_group.default.id}"
}

output "launch_configuration" {
  value = "${aws_launch_configuration.minikube-lc.id}"
}

output "asg_name" {
  value = "${aws_autoscaling_group.minikube-asg.id}"
}
