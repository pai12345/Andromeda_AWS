variable "launch_template_name" {
  type        = string
  description = "Launch Template name"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnet IDs"
}

variable "target_group_arns" {
  type        = list(string)
  description = "List of Target Group arn's"
}