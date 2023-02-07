variable "subnets" {
  description = "VPC ID"
  type = list(object({
    cidr_block              = string
    map_public_ip_on_launch = bool
    availability_zone       = string
  }))
  default = [
    {
      cidr_block              = "10.0.3.0/24",
      map_public_ip_on_launch = true
      availability_zone       = "us-east-1a"
    },
    {
      cidr_block              = "10.0.2.0/24",
      map_public_ip_on_launch = false
      availability_zone       = "us-east-1b"
  }]
}
