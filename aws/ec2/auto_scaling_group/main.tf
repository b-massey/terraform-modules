resource "aws_asg_with_launch_template" "web_asg" {
  name                      = "${format("asg-%s",var.name)}"
  max_size                  = "${var.max_size}"
  min_size                  = "${var.min_size}"
  desired_capacity          = "${var.desired_capacity}"
  vpc_zone_identifier       = ["${split(",", var.vpc_zone_identifier)}"]
  launch_template		    = {
  	id 		= "${var.launch_template_id}"
  	version = "$$Latest"
  }  
}

resource "aws_asg_with sclaing_policy" "web_asg" {
  name                      = "${format("asg-%s",var.name)}"
  max_size                  = "${var.max_size}"
  min_size                  = "${var.min_size}"
  desired_capacity          = "${var.desired_capacity}"
  vpc_zone_identifier       = ["${split(",", var.vpc_zone_identifier)}"]
  launch_template		    = {
  	id 		= "${var.launch_template_id}"
  	version = "$$Latest"
  }
  

