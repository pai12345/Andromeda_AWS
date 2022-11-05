# Output for ami
output "output_aws_ami" {
  description = "Output for ami"
  value       = data.aws_ami.ubuntu
}

# Output for aws_vpc
output "output_aws_vpc" {
  description = "Output for vpc"
  value       = aws_vpc.vpc_create
}

# Output for aws_subnet
output "output_aws_subnet" {
  description = "Output for subnet"
  value       = aws_subnet.subnet_create
}

# Output for EC2
output "output_ec2_create" {
  description = "Output for EC2 Instance"
  value       = aws_instance.ec2_create
}

# Output for aws_subnet
output "output_aws_key_pair" {
  description = "Output for fetching public key"
  value       = data.aws_key_pair.get_key
}