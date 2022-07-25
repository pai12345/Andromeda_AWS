variable "group_policy_name" {
  type        = string
  default     = "testgroup_policy"
  description = "IAM Group Policy name"
}

variable "group_name" {
  type        = string
  description = "IAM Group name"
}

variable "policy" {
  type        = string
  description = "IAM Policy to be attached to the group"
}