
output "scale_up_policy" {
  value = "${aws_autoscaling_policy.sweb_asg_policy_scale_up.arn}"
}

output "scale_down_policy" {
  value = "${aws_autoscaling_policy.web_asg_policy_scale_down.arn}"
}