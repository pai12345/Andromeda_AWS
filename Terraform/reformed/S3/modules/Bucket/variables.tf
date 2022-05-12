variable "bucketname" {
  description = "Bucket name"
  default     = "mytestbucketpai1"
}

variable "buckettags" {
  description = "bucket tags"
  type = object({
    type    = string
    project = string
  })
  default = {
    type    = "S3 Bucket"
    project = "Andromeda"
  }
}

variable "sse_algorithm" {
  description = "algorithm for encryption"
  default     = "AES256"
}

variable "bucket_versioning" {
  description = "algorithm for encryption"
  default     = "Enabled"
}
