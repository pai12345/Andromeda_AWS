variable "record_type" {
  type    = string
  default = "A"
}

variable "bucket_zone_id" {
  type = string
}

variable "hosted_zone_id" {
  type = string
}

variable "dns_name" {
  type = string
}

variable "website_name" {
  type = string
}
