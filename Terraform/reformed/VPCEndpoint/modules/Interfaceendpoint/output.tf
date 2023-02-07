#===================Output for S3 VPC Interface Endpoint=====================#
output "output_s3_interface" {
  description = "Output for S3 VPC Interface Endpoint"
  value       = aws_vpc_endpoint.s3_interface
}