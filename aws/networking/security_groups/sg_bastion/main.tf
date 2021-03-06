resource "aws_security_group" "bastion_security_group" {
  name        = "${var.sg_name}"
  description = "Security Group for ${var.sg_name}"
  vpc_id      = "${var.vpc_id}"

  // allows traffic from the SG itself for tcp
  ingress {
    from_port = 0
    to_port   = 65535
    protocol  = "tcp"
    self      = true
  }

  // allows traffic from the SG itself for udp
  ingress {
    from_port = 0
    to_port   = 65535
    protocol  = "udp"
    self      = true
  }

  // allow traffic for TCP 22 from authourized ip addresses array
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${split(",", var.restricted_access)}"]
  }

  // allow node to call out
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${var.source_cidr_block}"]
  }

  tags   = "${merge(var.tags, map("Name", "${var.sg_name}"))}"
}

