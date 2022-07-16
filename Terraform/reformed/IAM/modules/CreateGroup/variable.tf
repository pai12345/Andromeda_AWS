# iam group name
variable "aws_iam_group_name" {
  type        = string
  default     = "testgroup"
  description = "IAM group name"
}

# iam group path
variable "aws_iam_group_path" {
  type        = string
  default     = "/groups/"
  description = "IAM group path"
}