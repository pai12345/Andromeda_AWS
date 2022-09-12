variable "reponame" {
  description = "ECR Repository name"
  default     = "andromeda_ecr"
}

variable "immutable" {
  description = "ECR image immutability"
  default     = "IMMUTABLE"
}

variable "scan" {
  description = "ECR image scan"
  default     = true
}

variable "encryptiontype" {
  description = "ECR image encryption type"
  default     = "AES256"
}

variable "force_delete" {
  type        = bool
  description = "Force Delete Repository"
  default     = true
}

variable "tags" {
  description = "ECR Repository tags"
  default = {
    type    = "repository"
    project = "andromeda"
  }
}