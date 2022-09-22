# fetch vpc
data "aws_vpc" "fetch_vpc" {
  default = true
}

# fetch subnets
data "aws_subnets" "fetch_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.fetch_vpc.id]
  }
}