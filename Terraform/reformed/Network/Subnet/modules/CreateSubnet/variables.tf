variable "subnets" {
  description = "Subnets required by VPC"
  type = list(object({
    cidr_block              = string
    map_public_ip_on_launch = bool
  }))
  default = [
    {
      cidr_block              = "10.0.1.0/24",
      map_public_ip_on_launch = true
    },
    {
      cidr_block              = "10.0.2.0/24",
      map_public_ip_on_launch = false
  }]
}
