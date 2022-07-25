variable "policy_name" {
  type        = string
  default     = "PermissionsBoundary"
  description = "IAM PermissionsBoundary"
}

variable "policy_path" {
  type        = string
  default     = "/policy/"
  description = "IAM policy path"
}

variable "policy_description" {
  type        = string
  default     = "IAM PermissionsBoundary Policy"
  description = "IAM PermissionsBoundary Policy"
}

variable "policy" {
  type        = string
  description = "IAM policy document"
}

variable "tags" {
  type = object({
    type = string
  })
  default = {
    type = "policy"
  }
  description = "IAM Policy"
}