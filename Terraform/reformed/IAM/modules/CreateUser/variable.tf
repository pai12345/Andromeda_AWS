variable "iam_user_name" {
  type        = string
  default     = "testuser"
  description = "IAM user name"
}

variable "iam_user_path" {
  type        = string
  default     = "/users/"
  description = "IAM user path"
}

variable "iam_user_tags" {
  type = object({
    type = string
  })
  default = {
    type = "user"
  }
  description = "IAM user name"
}