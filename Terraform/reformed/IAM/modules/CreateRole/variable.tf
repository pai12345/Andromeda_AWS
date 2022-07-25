variable "role_name" {
  type        = string
  default     = "iam_ec2_role"
  description = "IAM EC2 role name"
}

variable "role_path" {
  type        = string
  default     = "/role/"
  description = "IAM EC2 Role path"
}

variable "role_description" {
  type        = string
  default     = "EC2 role for IAM Group access"
  description = "IAM EC2 Role description"
}

variable "policy" {
  type        = string
  description = "IAM EC2 User-Role Policy"
}

variable "role_tags" {
  type = object({
    type = string
  })
  default = {
    type = "EC2-role"
  }
  description = "IAM role for EC2 User"
}
