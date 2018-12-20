resource "aws_autoscaling_policy" "web_asg_policy_scale_down" {
  name                   = "${format("scale-down-%s",var.name)}"
  scaling_adjustment     = -1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 120
  autoscaling_group_name = "${var.autoscaling_group_name}"
}

resource "aws_autoscaling_policy" "web_asg_policy_scale_up" {
  name                   = "scale-up-ec2-cluster"
  scaling_adjustment     = 2
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 120
  autoscaling_group_name = "${var.autoscaling_group_name}"
}
