variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

/* variable "subnets" {
  description = "VPC ID"
  type = list(object({
    cidr_block              = string
    map_public_ip_on_launch = bool
  }))
  default = [{
    cidr_block              = "10.0.1.0/24",
    map_public_ip_on_launch = false
    },
    {
      cidr_block              = "10.0.2.0/24",
      map_public_ip_on_launch = false
  },
   {
      cidr_block              = "10.0.3.0/24",
      map_public_ip_on_launch = true
  }]
} */

variable "subnets" {
  description = "VPC ID"
  type = list(object({
    cidr_block              = string
    map_public_ip_on_launch = bool
  }))
  default = [
   {
      cidr_block              = "10.0.3.0/24",
      map_public_ip_on_launch = true
  }]
}