variable "profile_name" {
  type        = string
  default     = "ec2_user_profile"
  description = "IAM EC2 User Instance Profile name"
}

variable "profile_path" {
  type        = string
  default     = "/instanceprofile/"
  description = "IAM EC2 Instance Profile path"
}

variable "role" {
  type        = string
  description = "IAM EC2 Instance Profile role"
}

variable "profile_tags" {
  type = object({
    type = string
  })
  default = {
    type = "EC2-role"
  }
  description = "IAM role for EC2 User Tags"
}
