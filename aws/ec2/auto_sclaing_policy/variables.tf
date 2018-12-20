
variable "name" {}
variable "min_size" {}
variable "max_size" {}
variable "desired_capacity" {}
variable "vpc_zone_identifier" {}
variable "launch_template_id" {}
variable "tags" {
    type = "map"
}