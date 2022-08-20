variable "bucketname" {
  description = "Bucket name"
}

variable "buckettags" {
  description = "bucket tags"
  type = object({
    type    = string
    project = string
  })
  default = {
    type    = "Static WebSite"
    project = "Andromeda"
  }
}

variable "staticfile" {
  type        = string
  description = "file for website"
  default     = "index.html"
}