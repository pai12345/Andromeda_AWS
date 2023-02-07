resource "aws_vpc_endpoint" "s3_interface" {
  vpc_id              = var.vpc_id
  subnet_ids          = var.subnet_ids
  security_group_ids  = var.security_group_ids
  service_name        = "com.amazonaws.us-east-1.s3"
  /* private_dns_enabled = true */
  ip_address_type     = "ipv4"
  vpc_endpoint_type   = "Interface"
  tags = {
    type    = "vpc_endpoint_interface"
    project = "andromeda"
  }
}