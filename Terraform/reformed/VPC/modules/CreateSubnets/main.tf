locals {
  generate_subnets = { for i, v in var.subnets : i => v }
}

# create subnets
resource "aws_subnet" "andromeda_subnets" {
  for_each                            = local.generate_subnets
  vpc_id                              = var.vpc_id
  cidr_block                          = each.value.cidr_block
  map_public_ip_on_launch             = each.value.map_public_ip_on_launch
  /* private_dns_hostname_type_on_launch = "resource-name" */
  tags = {
    type    = "subnet"
    project = "andromeda"
  }
}