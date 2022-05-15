variable "reponame" {
  description = "ECR Repository name"
  default     = "mytestrepopai1"
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

variable "tags" {
  description = "ECR Repository tags"
  default = {
    type    = "repository"
    project = "andromeda"
  }
}